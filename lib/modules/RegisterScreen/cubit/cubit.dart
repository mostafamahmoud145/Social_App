import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/models/SocialUserModel.dart';
import 'package:social_app/modules/RegisterScreen/cubit/state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit(super.RegisterInitialState);

  static RegisterCubit get(context) => BlocProvider.of(context);

  SocialUserModel? socialUserModel;

  void userRegister({
    required String name,
    required String email,
    required String phone,
    required String password,
  })
  {
    emit(RegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value) {
      print("${value.user?.email}, ${value.user?.uid}");
      socialUserModel = SocialUserModel(name: name, email: email, uId: value.user!.uid, phone: phone);
      userCreate();
      emit(RegisterSuccessState());
    }).catchError((error){
      print(error);
      emit(RegisterErrorState());
    });

  }

  void userCreate()
  {
    FirebaseFirestore.instance.collection("Users").doc(socialUserModel!.uId).set(socialUserModel!.toMap()).then((value) {
      emit(RegisterCreateSuccessState());
    }).catchError((error){
      print(error);
      emit(RegisterCreateErrorState());
    });

  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined ;

    emit(RegisterChangePasswordVisibilityState());
  }
}