import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sha7n_tech/appLocalization.dart';
import 'package:sha7n_tech/colors.dart';
import 'package:sha7n_tech/components/components.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalization.of(context)!.translate("Register").toString(),
          style: Theme.of(context).appBarTheme.titleTextStyle,
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
              defaultTFF(keyboard: TextInputType.name),
              SizedBox(
                height: 3.32.h,
              ),
              defaultTFF(
                  keyboard: TextInputType.visiblePassword, password: true),
              SizedBox(
                height: 4.5.h,
              ),
              Row(
                children: [
                  TextButton(
                      style: ButtonStyle(
                          // foregroundColor:
                          ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10),
                        child: Text(
                            AppLocalization.of(context)!
                                .translate("forgot_password")
                                .toString(),
                            style: Theme.of(context).textTheme.bodyText2),
                      )),
                  SizedBox(
                    width: 14.w,
                  ),
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    value: checkbox,
                    onChanged: (value) {
                      setState(() {
                        checkbox = value!;
                      });
                    },
                    activeColor: AppColor.orange,
                    checkColor: AppColor.orange,
                  ),
                  Text(
                    AppLocalization.of(context)!
                        .translate("remember")
                        .toString(),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(
                height: 9.35.h,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    AppLocalization.of(context)!
                        .translate("don't_have_account")
                        .toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  )),
              SizedBox(
                height: 9.6.h,
              ),
              button(
                  buttonText: AppLocalization.of(context)!
                      .translate("login")
                      .toString())
            ],
          ),
        ),
      ),
    );
  }
}
