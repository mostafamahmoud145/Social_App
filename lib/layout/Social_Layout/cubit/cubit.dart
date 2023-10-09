import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app/layout/Social_Layout/cubit/state.dart';
import 'package:social_app/models/SocialPostModel.dart';
import 'package:social_app/models/SocialUserModel.dart';
import 'package:social_app/modules/ChatsScreen/ChatsScreen.dart';
import 'package:social_app/modules/FeedsScreen/FeedsScreen.dart';
import 'package:social_app/modules/NewPostsScreen/NewPostsScreen.dart';
import 'package:social_app/modules/SettingsScreen/SettingsScreen.dart';
import 'package:social_app/modules/UsersScreen/UsersScreen.dart';
import 'package:social_app/shared/components/components.dart';
import '../../../models/SocialMessageModel.dart';
import '../../../shared/conestants/conestants.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class SocialCubit extends Cubit<SocialStates> {
  SocialCubit(super.SocialInitialState);

  static SocialCubit get(context) => BlocProvider.of(context);

  var picker = ImagePicker();
  File? profileImage;
  File? coverImage;
  File? postImage;

  SocialUserModel? socialUserModel;
  int currentIndex = 0;

  static List<Widget> screens = [
    FeedsScreen(),
    ChatsScreen(),
    NewPostsScreen(),
    UsersScreen(),
    SettingsScreen(),
  ];

  static List<String> titles = [
    "Home",
    "Chats",
    "New Posts",
    "Users",
    "Settings",
  ];

  void dislike(index, postIndex){
    String i = checkLikes[index];
    checkLikes.removeAt(index);
    emit(SocialDisLikePostLoadingState());
    FirebaseFirestore.instance
        .collection("Posts")
        .doc(i)
        .collection("likes")
        .doc(uId)
        .delete()
        .then((value) {
      //getLikes();
      emit(SocialDisLikePostSucceedState());
    }).catchError((error) {
      emit(SocialDisLikePostErrorState());
    });
  }

  void like(item, postIndex){
    checkLikes.add(item);
    emit(SocialLikePostLoadingState());
    FirebaseFirestore.instance
        .collection("Posts")
        .doc(item)
        .collection("likes")
        .doc(uId)
        .set({'like': true}).then((value) {
      //getLikes();
      emit(SocialLikePostSucceedState());
    }).catchError((error) {
      emit(SocialLikePostErrorState());
    });
  }

  void changeIndex(int index, context) {
    if (index == 2) {
      navigateTo(context, NewPostsScreen());
      postImage = null;
    } else {
      currentIndex = index;
      emit(SocialChangeNavBarState());
    }
  }

  bool? checkCover;
  bool? checkProfile;

  void getUserData() {
    emit(GetUserLoadingState());
    FirebaseFirestore.instance.collection("Users").doc(uId).get().then((value) {
      socialUserModel = SocialUserModel.fromJson(value.data()!);
      if(socialUserModel!.cover == "empty"){
        checkCover = false;
      }
      else{
        checkCover = true;
      }
      if(socialUserModel!.profile == "empty"){
        checkProfile = false;
      }
      else{
        checkProfile = true;
      }
      emit(GetUserSucceedState());
      getUsers();
      getChatUsers();
    }).catchError((error) {
      print(error);
      emit(GetUserErrorState());
    });
  }

  void updateUser({
    required String name,
    required String phone,
    required String bio,
    String? cover,
    String? profile,
  }) {
    emit(EditProfileLoadingState());
    SocialUserModel? model;
    model = SocialUserModel.updateUser(
        name: name,
        bio: bio,
        cover: cover ?? socialUserModel!.cover,
        phone: phone,
        profile: profile ?? socialUserModel!.profile,
        uId: socialUserModel!.uId,
        email: socialUserModel!.email);
    FirebaseFirestore.instance
        .collection('Users')
        .doc(model.uId)
        .update(model.toMap())
        .then((value) {
      getUserData();
    }).catchError((error) {
      emit(EditProfileErrorState());
    });
  }

  Future<void> getProfileImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(SocialProfileImagePickedSuccessState());
    } else {
      print('No image selected.');
      emit(SocialProfileImagePickedErrorState());
    }
  }

  Future<void> getCoverImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      coverImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(SocialProfileImagePickedSuccessState());
    } else {
      print('No image selected.');
      emit(SocialProfileImagePickedErrorState());
    }
  }

  Future<void> getPostImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      postImage = File(pickedFile.path);
      print(pickedFile.path);
      emit(SocialProfileImagePickedSuccessState());
    } else {
      print('No image selected.');
      emit(SocialProfileImagePickedErrorState());
    }
  }

  Future<void> uploadProfileImage({
    required String name,
    required String phone,
    required String bio,
  }) async {
    emit(EditProfileLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child("User/${Uri.file(profileImage!.path).pathSegments.last}")
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        updateUser(name: name, phone: phone, bio: bio, profile: value);
      }).catchError((error) {
        emit(SocialUploadProfileImageErrorState());
      });
    }).catchError((error) {
      emit(SocialUploadProfileImageErrorState());
    });
  }

  Future<void> uploadCoverImage({
    required String name,
    required String phone,
    required String bio,
  }) async {
    emit(EditProfileLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child("User/${Uri.file(coverImage!.path).pathSegments.last}")
        .putFile(coverImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        updateUser(name: name, phone: phone, bio: bio, cover: value);
      }).catchError((error) {
        emit(SocialUploadCoverImageErrorState());
        print(error);
      });
    }).catchError((error) {
      emit(SocialUploadCoverImageErrorState());
    });
  }

  Future<void> uploadPostImage({
    required String text,
    required String dateTime,
  }) async {
    emit(SocialCreatePostLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child("Post/${Uri.file(postImage!.path).pathSegments.last}")
        .putFile(postImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        createPost(text: text, dateTime: dateTime, postImage: value);
      }).catchError((error) {
        emit(SocialUploadPostImageErrorState());
        print(error);
      });
    }).catchError((error) {
      emit(SocialUploadCoverImageErrorState());
    });
  }

  void createPost({
    required String text,
    required String dateTime,
    String? postImage,
  }) {
    emit(SocialCreatePostLoadingState());
    SocialPostModel? socialPostModel;
    socialPostModel = SocialPostModel(
        text: text,
        name: socialUserModel!.name,
        dateTime: dateTime,
        profileImage: socialUserModel!.profile,
        uId: uId!,
        postImage: postImage ?? "empty", count: 0);
    FirebaseFirestore.instance
        .collection("Posts")
        .add(socialPostModel.toMap())
        .then((value) {
      getPosts();
      emit(SocialCreatePostSucceedState());
    }).catchError((error) {
      emit(SocialCreatePostErrorState());
    });
  }

  List<SocialPostModel> posts = [];
  List<String> postsId = [];
  List<int> likes = [];

  void getPosts() {
    likes = [];
    postsId = [];
    posts = [];
    checkLikes = [];
    FirebaseFirestore.instance.collection("Posts").get().then((value) {
      value.docs.forEach((element) {
        element.reference.collection('likes').get().then((value) {
          SocialPostModel post = SocialPostModel.fromJson(element.data());
          FirebaseFirestore.instance.collection('Users').doc(post.uId).get().then((valuee) {
            postsId.add(element.id);
            post.count = value.docs.length;
            post.profileImage = valuee.data()!['profile'];
            posts.add(post);
            emit(SocialGetPostSucceedState());
          });
          value.docs.forEach((elementt) {
            if(elementt.id == uId){
              checkLikes.add(element.id);
            }
          });
          emit(SocialGetLikeSucceedState());
        }).catchError((error) {
          emit(SocialGetLikeErrorState());
        });
      });
      emit(SocialGetLikeSucceedState());
    }).catchError((error) {
      emit(SocialGetLikeErrorState());
    });
  }

  List checkLikes = [];

  List<SocialUserModel> users = [];

  void getUsers() {
    if (users.isEmpty) {
      FirebaseFirestore.instance.collection('Users').get().then((value) {
        value.docs.forEach((element) {
          if (element.data()['uId'] != socialUserModel!.uId)
            users.add(SocialUserModel.fromJson(element.data()));
        });
        emit(SocialGetAllUsersSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(SocialGetAllUsersErrorState(error.toString()));
      });
    }
  }

  List<SocialUserModel> chatUsers = [];

  void getChatUsers() {
    chatUsers= [];
    FirebaseFirestore.instance
        .collection('Users')
        .doc(socialUserModel!.uId)
        .collection('chats')
        .snapshots()
        .listen((event) {
          event.docs.forEach((element) {
            chatUsers =[];
            FirebaseFirestore.instance
                .collection('Users')
                .doc(element.data()['receiverID'])
                .get()
                .then((value) {
              chatUsers.add(SocialUserModel.fromJson(value.data()!));
              emit(SocialGetAllChatsUsersSuccessState());
            }).catchError((error) {
              print(error.toString());
              emit(SocialGetAllChatsUsersErrorState(error.toString()));
            });
          });
    });
  }

  void sendMessage({
    required String receiverId,
    required String dateTime,
    required String text,
  }) {
    MessageModel model = MessageModel(
      text: text,
      senderId: socialUserModel!.uId,
      receiverId: receiverId,
      dateTime: dateTime,
    );

    // set my chats

    FirebaseFirestore.instance
        .collection('Users')
        .doc(socialUserModel!.uId)
        .collection('chats')
        .doc(receiverId)
        .collection('messages')
        .add(model.toMap())
        .then((value) {
      emit(SocialSendMessageSuccessState());
    }).catchError((error) {
      emit(SocialSendMessageErrorState());
    });

    DocumentReference documentRef = FirebaseFirestore.instance
        .collection('Users')
        .doc(socialUserModel!.uId)
        .collection("chats")
        .doc(receiverId);
    documentRef
        .set({'receiverID': receiverId})
        .then((value) => print('Field set successfully'))
        .catchError((error) => print('Failed to set field: $error'));

    // set receiver chats

    FirebaseFirestore.instance
        .collection('Users')
        .doc(receiverId)
        .collection('chats')
        .doc(socialUserModel!.uId)
        .collection('messages')
        .add(model.toMap())
        .then((value) {
      emit(SocialSendMessageSuccessState());
    }).catchError((error) {
      emit(SocialSendMessageErrorState());
    });

    DocumentReference documentReff = FirebaseFirestore.instance
        .collection('Users')
        .doc(receiverId)
        .collection("chats")
        .doc(socialUserModel!.uId);
    documentReff
        .set({'receiverID': socialUserModel!.uId})
        .then((value) => print('Field set successfully'))
        .catchError((error) => print('Failed to set field: $error'));
  }

  List<MessageModel> messages = [];

  void getMessages({
    required String receiverId,
  }) {
    FirebaseFirestore.instance
        .collection('Users')
        .doc(socialUserModel!.uId)
        .collection('chats')
        .doc(receiverId)
        .collection('messages')
        .orderBy('dateTime')
        .snapshots()
        .listen((event) {
      messages = [];
      event.docs.forEach((element) {
        messages.add(MessageModel.fromJson(element.data()));
      });

      emit(SocialGetMessagesSuccessState());
    });
  }
}
