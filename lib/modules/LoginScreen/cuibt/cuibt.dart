import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/modules/LoginScreen/cuibt/states.dart';
import 'package:social_app/shared/conestants/conestants.dart';

import '../../../models/SocialUserModel.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(super.LoginInitialState);

  static LoginCubit get(context) => BlocProvider.of(context);
  SocialUserModel? socialUserModel;

  void userLogin({required String email, required String password}) {
    emit(LoginLoadingState());
     FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password
     ).then((value) {
       uId = value.user!.uid;
       emit(LoginSucceedState());
     }).catchError((error){
       print(error);
       emit(LoginErrorState());
     });
  }
}
