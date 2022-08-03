import 'package:dialer_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.iconColor,
    required this.buttonColor,
    required this.iconAsset,
    required this.onPress,
    this.size = 55,
  }) : super(key: key);

  final Color iconColor, buttonColor;
  final String iconAsset;
  final VoidCallback onPress;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(size),
      width: getProportionateScreenHeight(size),
      child: FlatButton(
          padding: EdgeInsets.all(15),
          color: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: onPress,
          child: SvgPicture.asset(
            iconAsset,
            color: iconColor,
          )),
    );
  }
}
