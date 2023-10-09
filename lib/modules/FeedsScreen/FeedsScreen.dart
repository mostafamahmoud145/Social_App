import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/layout/Social_Layout/cubit/cubit.dart';
import 'package:social_app/layout/Social_Layout/cubit/state.dart';
import 'package:social_app/models/SocialPostModel.dart';

class FeedsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialStates>(
      listener: (context, state){},
      builder: (context, state){
        return ConditionalBuilder(
          condition: SocialCubit.get(context).socialUserModel != null && SocialCubit.get(context).posts.isNotEmpty,
          builder: (context) => SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 5,
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      FancyShimmerImage(
                        height: 210,
                        width: double.infinity,
                        boxFit: BoxFit.cover,
                        imageUrl: 'https://img.freepik.com/free-photo/close-up-bearded-young-man-isolated_273609-35409.jpg?w=1380&t=st=1662256448~exp=1662257048~hmac=019d4f683394d9e6a90148eeb9e09ac9b7c1eb01e5c04053abec9a66c4a377a3',
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 8.0,bottom: 15.0),
                        child: Text("Communicate With Friends",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: Theme.of(context).textTheme.subtitle1?.fontFamily,
                          ),),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics:  NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => postItemBuild(SocialCubit.get(context).posts[index], context, index),
                  itemCount: SocialCubit.get(context).posts.length,
                ),
              ],
            ),
          ),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget postItemBuild(SocialPostModel model, context, index){
    return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  model.profileImage != 'empty'? CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: ClipOval(
                      child: FancyShimmerImage(
                        boxFit: BoxFit.cover,
                        boxDecoration: BoxDecoration(
                            shape: BoxShape.circle
                        ),
                        imageUrl: model
                            .profileImage,
                      ),
                    ),
                  ): CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(model.name,
                              style: TextStyle(
                                  height: 1.4,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.check_circle,color: Colors.blue,size: 15,
                            ),
                          ],
                        ),
                        Text(model.dateTime,
                          style: TextStyle(
                            height: 1.4,
                            color: Colors.grey.shade500,
                            fontFamily: Theme.of(context).textTheme.caption?.fontFamily,
                          ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.more_horiz,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  color: Colors.grey.shade300,
                  height: 1,
                ),
              ),
              Text(model.text,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.4,
                ),),

              if(model.postImage!="empty")
                Container(
                height: 170,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: FancyShimmerImage(
                    boxFit: BoxFit.cover,
                    imageUrl: model.postImage,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: (){
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("${model.count}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
                                  ),),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.wechat_sharp,
                                color: Colors.orange,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("100 comments",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
                                ),),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade300,
                height: 1,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 8.0),
                child: Row(
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
                      width: 8,
                    ),
                    Expanded(
                      child: InkWell(
                        child: Text("Write a comment..."),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        if(SocialCubit.get(context).checkLikes.contains(SocialCubit.get(context).postsId[index])){
                          SocialCubit.get(context).dislike(SocialCubit.get(context).checkLikes.indexOf(SocialCubit.get(context).postsId[index]),index);
                          print("h3ml disLike");
                          model.count--;
                        }
                        else{
                          model.count++;
                          SocialCubit.get(context).like(SocialCubit.get(context).postsId[index], index);
                          print("h3ml like");
                        }
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              SocialCubit.get(context).checkLikes.contains(SocialCubit.get(context).postsId[index])?Icons.favorite:Icons.favorite_outline,
                              color: Colors.red,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Like",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
                              ),),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
  }
}