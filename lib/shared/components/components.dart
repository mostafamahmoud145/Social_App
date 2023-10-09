import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../styles/colors.dart';

void NavigateAndReplace(context , widget)=>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context)=> widget,),
            (route) => false);

void navigateTo(context, widget)=>
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=> widget));


Widget defaultText ({
  required TextEditingController controller,
  bool isPassword = false,
  required String text,
  required IconData prefix,
  IconData? suffix,
  Function ()? function,
  Function ()? date,
  bool readOnly = false,
  String? Function(String? value)? onSubmit,
  required TextInputType inputType,
  required String? Function(String? value) valid,
  required String? Function(String? value) onChange,
})=>TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      validator: valid,
      onChanged: onChange,
      onTap: date,
      onFieldSubmitted: onSubmit,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: IconButton(onPressed: function, icon: Icon(suffix)),
        border: OutlineInputBorder(),
      ),
    );



Widget defaultButton ({
  double width = double.infinity,
  Color background = Colors.blue,
  required Function()? function,
  required String text,
  double radius =10.0,
}) => Container(
  width: width,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
);

Widget defaultAddButton ({
  Color background = Colors.white,
  required Function()? function,
  required String text,
}) => Container(
  child: OutlinedButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
  ),
    color: background,
);

Widget defaultEditButton ({
  Color background = Colors.white,
  required Function()? function,
}) => Container(
  child: OutlinedButton(
    onPressed: function,
    child: Icon(
      Icons.edit,
      color: Colors.blue,
      ),
    ),
  color: background,
);


Widget defaultTextButton({
  required Function() function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontSize: 16
        ),
      ),
    );


Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);


void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 16.0,
    );

// enum
enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;

  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }

  return color;
}
