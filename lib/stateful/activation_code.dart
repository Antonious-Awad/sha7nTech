import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:sha7n_tech/appLocalization.dart';
import 'package:sha7n_tech/colors.dart';
import 'package:sha7n_tech/components/components.dart';
import 'package:sizer/sizer.dart';

class ActivationCode extends StatefulWidget {
  @override
  _ActivationCodeState createState() => _ActivationCodeState();
}

class _ActivationCodeState extends State<ActivationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalization.of(context)!.translate("activation_code").toString(),
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColor.orange),
          onPressed: (){},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/images/login.png"),
                  width: 51.2.w,
                  height: 23.6.h,
                  // fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 3.h,),
              Text(
                AppLocalization.of(context)!.translate("enter_code").toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Careem',
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 4.4.h,),
              VerificationCode(
                itemSize: 14.w,
                textStyle: TextStyle(
                    fontSize: 39.0,
                    color: AppColor.orange2),
                underlineColor: AppColor.black,
                keyboardType: TextInputType.number,
                length: 5,
                onCompleted: (String value) {
                  setState(() {
                    //_code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    //_onEditing = value;
                  });
                },
              ),
              SizedBox(height: 5.5.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 9.w,),
                  Text(
                    AppLocalization.of(context)!.translate("resend_code").toString(),
                    style: TextStyle(
                        fontSize: 15.0,
                        decoration: TextDecoration.underline,
                        color: AppColor.black),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              button(
                  buttonText:
                  AppLocalization.of(context)!.translate("enter_").toString())
            ],
          ),
        ),
      ),
    );
  }
}
