import 'package:flutter/material.dart';
import 'package:sha7n_tech/colors.dart';
import 'package:sizer/sizer.dart';



Widget tffItem({
  required String title,
  TextInputType? keyboard,
  required BuildContext context
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: Theme.of(context).textTheme.headline1
        ),
        SizedBox(
          height: 1.2.h,
        ),
        defaultTFF(keyboard: keyboard)
      ],
    );


TextStyle tffInputStyle() {
  return TextStyle(
      fontFamily: "Careem",
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: AppColor.black);
}

Widget defaultTFF({TextInputType? keyboard, bool password = false}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: AppColor.orange.withOpacity(0.26),
    ),
    child: TextFormField(
      obscureText: password,
      keyboardType: keyboard,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColor.orange.withOpacity(0.26)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: AppColor.orange.withOpacity(0.26)),
        ),
      ),
    ),
  );
}

Widget button({required String buttonText}) {
  return Container(
    width: 263,
    height: 50,
    margin: EdgeInsetsDirectional.only(bottom: 20),
    child: MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      onPressed: () {},
      color: AppColor.orange.withOpacity(1),
      textColor: AppColor.white,
      child: Text(
        buttonText,
        style: TextStyle(
            fontFamily: "Careem", fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
