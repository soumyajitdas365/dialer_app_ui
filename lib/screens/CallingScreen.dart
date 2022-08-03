// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:dialer_app_ui/konstants.dart';
import 'package:dialer_app_ui/screens/widgets/actionbuttion.dart';
import 'package:dialer_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/full_image.png",
            fit: BoxFit.cover,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Soumyajit\nDas",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: Colors.white),
                  ),
                  VerticalSpacing(
                    of: 10,
                  ),
                  Text(
                    "Incoming 00:02",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionButton(
                        buttonColor: Colors.white,
                        iconAsset: 'assets/icons/Icon Mic.svg',
                        onPress: () {},
                        iconColor: Colors.black,
                      ),
                      ActionButton(
                        buttonColor: kRedColor,
                        iconAsset: 'assets/icons/call_end.svg',
                        onPress: () {},
                        iconColor: Colors.white,
                      ),
                      ActionButton(
                        buttonColor: Colors.white,
                        iconAsset: 'assets/icons/Icon Volume.svg',
                        onPress: () {},
                        iconColor: Colors.black,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
