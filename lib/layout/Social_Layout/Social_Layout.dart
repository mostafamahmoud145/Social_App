import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/layout/Social_Layout/cubit/cubit.dart';
import 'package:social_app/layout/Social_Layout/cubit/state.dart';

class SocialLayout extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit,SocialStates>(
      listener: (context, state){},
      builder: (context, state){
        var socialCubit = SocialCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: socialCubit.currentIndex,
              onTap: (index){
                socialCubit.changeIndex(index, context);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_sharp), label: "Chats"),
                BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Posts"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Users"),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
              ]),
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            ],
            title: Text(SocialCubit.titles[socialCubit.currentIndex]),
          ),
          body: SocialCubit.screens[socialCubit.currentIndex],
        );
      },

    );
  }

}