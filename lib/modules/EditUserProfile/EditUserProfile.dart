import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/layout/Social_Layout/cubit/cubit.dart';
import 'package:social_app/layout/Social_Layout/cubit/state.dart';
import 'package:social_app/shared/components/components.dart';

class EditUserProfile extends StatelessWidget{
  TextEditingController name = TextEditingController();
  TextEditingController bio = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool load = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialStates>(
      listener: (context, state){
        if(state is GetUserSucceedState)
        {
          Navigator.pop(context);
        }
      },
      builder: (context, state){

        return ConditionalBuilder(
          condition: SocialCubit.get(context).socialUserModel != null,
          builder: (context) {
            name.text = SocialCubit.get(context).socialUserModel!.name;
            bio.text = SocialCubit.get(context).socialUserModel!.bio;
            phone.text = SocialCubit.get(context).socialUserModel!.phone;
            var profileImage = SocialCubit.get(context).profileImage;
            var coverImage = SocialCubit.get(context).coverImage;
            return Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              title: Text("Edit Profile"),
              actions: [
                TextButton(
                    onPressed: (){
                      if(coverImage ==null && profileImage==null)
                        {
                          if(name.text != SocialCubit.get(context).socialUserModel!.name || bio.text != SocialCubit.get(context).socialUserModel!.bio || phone.text != SocialCubit.get(context).socialUserModel!.phone)
                            SocialCubit.get(context).updateUser(name: name.text, phone: phone.text, bio: bio.text);
                          else
                            Navigator.pop(context);
                        }
                      else if(coverImage != null && profileImage == null)
                        {
                          SocialCubit.get(context).uploadCoverImage(name: name.text, phone: phone.text, bio: bio.text);
                        }
                      else if(coverImage == null && profileImage != null)
                      {
                        SocialCubit.get(context).uploadProfileImage(name: name.text, phone: phone.text, bio: bio.text);
                      }
                      else if(coverImage != null && profileImage != null)
                      {
                        SocialCubit.get(context).uploadProfileImage(name: name.text, phone: phone.text, bio: bio.text);
                        SocialCubit.get(context).uploadCoverImage(name: name.text, phone: phone.text, bio: bio.text);

                      }

                    },
                    child: Text("Update"))
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  if(state is EditProfileLoadingState)
                    Center(child: LinearProgressIndicator()),
                  Card(
                    color: Colors.transparent,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 0,
                    child: Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Stack(
                            alignment: Alignment.topRight,
                            children: [
                              SocialCubit.get(context).checkCover == true ? FancyShimmerImage(
                                height: 170,
                                width: double.infinity,
                                boxFit: BoxFit.cover,
                                imageUrl: SocialCubit.get(context).socialUserModel!.cover,
                              ): Image(
                                image: AssetImage('assets/images/placeholder.png'),
                                fit: BoxFit.cover,
                                height: 170,
                                width: double.infinity,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade600,
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: (){
                                      SocialCubit.get(context).getCoverImage();
                                    },
                                    icon: Icon(Icons.camera_alt_outlined),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(top: 95.0),
                                child: SocialCubit.get(context).checkProfile == true? CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 74,
                                  child: CircleAvatar(
                                    child: ClipOval(
                                      child: FancyShimmerImage(
                                        boxDecoration: BoxDecoration(
                                            shape: BoxShape.circle
                                        ),
                                        imageUrl: SocialCubit.get(context)
                                            .socialUserModel!
                                            .profile,
                                        boxFit: BoxFit.cover,
                                        height: double.infinity,
                                        width: double.infinity,
                                      ),
                                    ),
                                    radius: 70,
                                    backgroundColor: Colors.white,
                                  ),
                                ): CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 74,
                                  child: CircleAvatar(
                                    child: ClipOval(
                                      child: Image(
                                        image: AssetImage('assets/images/profile.png'),
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                        width: double.infinity,
                                      ),
                                    ),
                                    radius: 70,
                                    backgroundColor: Colors.white,
                                  ),
                                )
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade600,
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: (){
                                      SocialCubit.get(context).getProfileImage();
                                    },
                                    icon: Icon(Icons.camera_alt_outlined),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        defaultText(controller: name, text: "Name", prefix: Icons.people_alt_outlined, inputType: TextInputType.text, valid: (value){
                          if(value == null || value.isEmpty)
                          {
                            return "Name cannot be empty";
                          }
                        }, onChange: (value){}),

                        SizedBox(
                          height: 10,
                        ),

                        defaultText(controller: bio, text: "Bio", prefix: Icons.info_outline, inputType: TextInputType.text, valid: (value){
                          if(value == null || value.isEmpty)
                          {
                            return "Bio cannot be empty";
                          }
                        }, onChange: (value){}),

                        SizedBox(
                          height: 10,
                        ),

                        defaultText(controller: phone, text: "Phone", prefix: Icons.phone, inputType: TextInputType.phone, valid: (value){
                          if(value == null || value.isEmpty)
                          {
                            return "Phone cannot be empty";
                          }
                        }, onChange: (value){}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );},
          fallback: (context) => Center(child: CircularProgressIndicator()),

        );
      },
    );
  }
}