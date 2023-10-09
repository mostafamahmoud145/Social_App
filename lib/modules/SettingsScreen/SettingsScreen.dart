import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/layout/Social_Layout/cubit/cubit.dart';
import 'package:social_app/layout/Social_Layout/cubit/state.dart';
import 'package:social_app/modules/EditUserProfile/EditUserProfile.dart';
import 'package:social_app/shared/components/components.dart';

import '../../shared/conestants/conestants.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ConditionalBuilder(
          condition: SocialCubit.get(context).socialUserModel != null,
          builder: (context) => SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Card(
                  color: Colors.transparent,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 0,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    SocialCubit.get(context).socialUserModel!.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily:
                          Theme.of(context).textTheme.headline1?.fontFamily,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 8.0),
                  child: Text(
                    SocialCubit.get(context).socialUserModel!.bio,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 15,
                        fontFamily:
                            Theme.of(context).textTheme.caption?.fontFamily),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Posts"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "265",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Photos"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "10k",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Followers"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "64",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Following"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: defaultAddButton(
                              function: () {
                                dynamic mm;
                                FirebaseFirestore.instance
                                    .collection("Posts")
                                    .doc("A19u2rHs45elEVojog53")
                                    .collection("likes")
                                    .doc(uId)
                                    .get()
                                    .then((value) {
                                  mm = value.data();
                                  Map<String, dynamic>? tru = value.data();
                                  print(tru);
                                }).catchError((error) {
                                  print(error);
                                });
                              },
                              text: "Add Photos")),
                      SizedBox(
                        width: 10,
                      ),
                      defaultEditButton(function: () {
                        navigateTo(context, EditUserProfile());
                      }),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
