import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/Social_Layout/cubit/cubit.dart';
import '../../layout/Social_Layout/cubit/state.dart';
import '../../shared/components/components.dart';

class NewPostsScreen extends StatelessWidget {
  var textController = TextEditingController();
  var globKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {
        if (state is SocialCreatePostSucceedState) {
          Navigator.pop(context);
          SocialCubit.get(context).postImage = null;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Create Post'),
            actions: [
                defaultTextButton(
                  function: () {

                    if(SocialCubit.get(context).postImage != null)
                    {
                      var now = DateTime.now();
                        SocialCubit.get(context).uploadPostImage(
                          dateTime: now.toString(),
                          text: textController.text,
                        );
                    }
                    else if(globKey.currentState!.validate())
                    {
                      var now = DateTime.now();
                      if (SocialCubit.get(context).postImage == null) {
                        SocialCubit.get(context).createPost(
                          dateTime: now.toString(),
                          text: textController.text,
                        );
                      } else {
                        SocialCubit.get(context).uploadPostImage(
                          dateTime: now.toString(),
                          text: textController.text,
                        );
                      }
                    }
                    },
                  text: 'Post',
                ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                if (state is SocialCreatePostLoadingState)
                  LinearProgressIndicator(),
                if (state is SocialCreatePostLoadingState)
                  SizedBox(
                    height: 10.0,
                  ),
                Row(
                  children: [
                    SocialCubit.get(context).socialUserModel!.profile != 'empty'? CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: ClipOval(
                        child: FancyShimmerImage(
                          boxFit: BoxFit.cover,
                          boxDecoration: BoxDecoration(
                              shape: BoxShape.circle
                          ),
                          imageUrl: SocialCubit.get(context).socialUserModel!.profile,
                        ),
                      ),
                    ): CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Text(
                        SocialCubit.get(context).socialUserModel!.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
                Form(
                  key: globKey,
                  child: Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Post annot be empty";
                      },
                      controller: textController,
                      decoration: InputDecoration(
                        hintText: 'what is on your mind ...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                if (SocialCubit.get(context).postImage != null)
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        height: 140.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4.0,
                          ),
                          image: DecorationImage(
                            image: FileImage(
                                SocialCubit.get(context).postImage!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          SocialCubit.get(context).getPostImage();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'add photo',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '# tags',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
