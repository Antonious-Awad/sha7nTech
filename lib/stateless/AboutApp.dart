import 'package:flutter/material.dart';
import 'package:sha7n_tech/appLocalization.dart';
import 'package:sha7n_tech/colors.dart';
import 'package:sizer/sizer.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalization.of(context)!.translate("aboutUs").toString(),
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 6.03.h,
            ),
            Text(
              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalization.of(context)!
                      .translate("email_hint")
                      .toString(),
                  style: TextStyle(
                      fontFamily: "Careem",
                      fontSize: 20,
                      color: AppColor.black,
                      decoration: TextDecoration.none
                      ),
                ),
                SizedBox(
                  height: 2.3.h,
                ),
                Card(
                  elevation: 3,
                  shadowColor: AppColor.greyPale2,
                  child: Container(
                    width: 75.5.w,
                    height: 5.3.h,
                    child: Center(
                      child: Text(
                        "Appadmin@exmple.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.gold,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6.03.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalization.of(context)!
                      .translate("phone_number_hint")
                      .toString(),
                  style: TextStyle(
                      fontFamily: "Careem",
                      fontSize: 20,
                      color: AppColor.black,
                      decoration: TextDecoration.none
                      ),
                ),
                SizedBox(
                  height: 2.3.h,
                ),
                Card(
                  elevation: 3,
                  shadowColor: AppColor.greyPale2,
                  child: Container(
                    width: 75.5.w,
                    height: 5.3.h,
                    child: Center(
                      child: Text(
                        "+1542154544422",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.gold,
                          decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          
          ],
        ),
      ),
    );
  }
}
