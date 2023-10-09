import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/layout/Social_Layout/Social_Layout.dart';
import 'package:social_app/modules/LoginScreen/LoginScreen.dart';
import 'package:social_app/shared/components/bloc_observer.dart';
import 'package:social_app/shared/conestants/conestants.dart';
import 'package:social_app/shared/shared%20preferences/shared_preferences.dart';
import 'package:social_app/shared/styles/themes.dart';

import 'layout/Social_Layout/cubit/cubit.dart';
import 'layout/Social_Layout/cubit/state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  await CashHelper.init();
  uId=CashHelper.getData(key: 'uId');
  if(uId == null)
  {
    widget = LoginScreen();
    print(uId);
  }
  else
  {
    widget = SocialLayout();
  }
  runApp(MyApp(widget!));
}

class MyApp extends StatelessWidget {
  Widget widget;
  MyApp(this.widget);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> SocialCubit(SocialInitialState())..getUserData()..getPosts()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: widget,
      ),
    );
  }

}

