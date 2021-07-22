import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:sha7n_tech/appLocalization.dart';
import 'package:sha7n_tech/colors.dart';
import 'package:sha7n_tech/stateful/activation_code.dart';
import 'package:sha7n_tech/stateful/add_order.dart';
import 'package:sha7n_tech/stateful/add_request.dart';
import 'package:sha7n_tech/stateful/login.dart';
//import 'package:sha7n_tech/stateful/add_request.dart';
//import 'package:sha7n_tech/stateful/login.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'stateful/add_order.dart';

LocalizationDelegate? delegate;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AddOrder(),
        supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
        localizationsDelegates: [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode &&
                supportedLocale.countryCode == locale.countryCode)
              return supportedLocale;
          }
          return supportedLocales.first;
        },
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.white,
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontFamily: "Careem",
              fontSize: 15,
              color: AppColor.black,
            ),
            bodyText2: TextStyle(
                fontFamily: "Careem",
                fontSize: 15,
                color: AppColor.black,
                decoration: TextDecoration.underline),
          ),
          fontFamily: "Careem",
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: AppColor.white,
            elevation: 0,
            titleTextStyle: TextStyle(
                fontFamily: "Careem",
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
          ),
        ),
      );
    });
  }
}
