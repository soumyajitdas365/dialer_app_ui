// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dialer_app_ui/konstants.dart';
import 'package:dialer_app_ui/size_config.dart';
import 'package:flutter/material.dart';

class DialingScreen extends StatelessWidget {
  const DialingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Priyanka Pal",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
            VerticalSpacing(
              of: 10,
            ),
            Text(
              "Diallig...",
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: getProportionateScreenHeight(150),
              width: getProportionateScreenWidth(150),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.02),
                    Colors.white.withOpacity(0.08),
                  ],
                ),
              ),
              child: Image.asset("assets/images/calling_face.png"),
            ),
          ],
        ),
      ),
    );
  }
}
