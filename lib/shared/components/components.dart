import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  // @required Function? function,
  @required VoidCallback? function,
  @required String text = '',
}) => Container(
  width: width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      radius,
    ),
    color: background,
  ),
  child: MaterialButton(
    onPressed: function,
    // onPressed: () {
    //   function?.call();
    // },
    height: 40.0,
    child: Text(
      isUpperCase? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget defaultFormField({
  @required TextEditingController? controller,
  @required TextInputType? type = TextInputType.text,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  bool isPassword = false,
  IconData? suffix,
  @required FormFieldValidator<String>? validate,
  @required String? label,
  @required IconData? prefix,
  VoidCallback? suffixPressed,
}) => TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    validator: validate,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(
        prefix,
      ),
      suffixIcon: suffix != null? IconButton(
        onPressed: suffixPressed,
        icon: Icon(
          suffix,
        ),
      ) : null,
      border: OutlineInputBorder(),
    ),
  );