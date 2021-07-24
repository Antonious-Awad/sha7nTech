import 'package:flutter/material.dart';
import 'package:sha7n_tech/appLocalization.dart';
import 'package:sizer/sizer.dart';
class orderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalization.of(context)!.translate("add_request").toString(),
          style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/images/login.png"),
              ),
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: (){},
                  child: Column(
                    children: [
                      Image(
                        
                        image: AssetImage("assets/images/car1.png"),
                        width: 145,
                        height: 113,
                        ),
                      Text(AppLocalization.of(context)!.translate("transport_goods").toString(),
                      style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                SizedBox(width:5.3.w ,),
                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/car2.png"),
                        width: 145,
                        height: 113,
                        ),
                      Text(AppLocalization.of(context)!.translate("refrigerator_carts").toString(),
                      style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
