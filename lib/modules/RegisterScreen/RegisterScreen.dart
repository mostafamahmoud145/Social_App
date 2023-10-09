import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/components.dart';
import '../LoginScreen/LoginScreen.dart';
import 'cubit/cubit.dart';
import 'cubit/state.dart';

class RegisterScreen extends StatelessWidget
{
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(RegisterInitialState()),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is RegisterCreateSuccessState) {
            NavigateAndReplace(
              context,
              LoginScreen(),
            );
          }
        },
        builder: (context, state)
        {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'REGISTER',
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Register now to browse our hot offers',
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        defaultText(
                          onChange: (value){},
                          controller: nameController,
                          inputType: TextInputType.name,
                          valid: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your name';
                            }
                          },
                          text: 'User Name',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultText(
                          controller: emailController,
                          inputType: TextInputType.emailAddress,
                          valid: (value) {
                            if (value==null || value.isEmpty) {
                              return 'please enter your email address';
                            }
                          },
                          text: 'Email Address',
                          prefix: Icons.email_outlined,
                          onChange: (value){}
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultText(
                          controller: passwordController,
                          inputType: TextInputType.visiblePassword,
                          suffix: RegisterCubit.get(context).suffix,
                          onSubmit: (value)
                          {

                          },
                          isPassword: RegisterCubit.get(context).isPassword,
                          function: () {
                            RegisterCubit.get(context)
                                .changePasswordVisibility();
                          },
                          valid: (value) {
                            if (value==null || value.isEmpty) {
                              return 'password is too short';
                            }
                          },
                          text: 'Password',
                          prefix: Icons.lock_outline,
                          onChange: (value){}
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultText(
                          controller: phoneController,
                          inputType: TextInputType.phone,
                          valid: (value) {
                            if (value==null||value.isEmpty) {
                              return 'please enter your phone number';
                            }
                          },
                          text: 'Phone',
                          prefix: Icons.phone,
                          onChange: (value){}
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        ConditionalBuilder(
                          condition: state is! RegisterLoadingState,
                          builder: (context) => defaultButton(
                            function: () {
                              if (formKey.currentState!.validate())
                              {
                                RegisterCubit.get(context).userRegister(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  phone: phoneController.text,
                                );
                              }
                            },
                            text: 'register',
                          ),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}