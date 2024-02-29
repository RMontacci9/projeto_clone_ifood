import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pathIcons = "assets/icons/";

class AppIcons {
  static const arrowDown = "${pathIcons}arrow_down.svg";
}

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key, required this.appIcon,  this.size, this.color})
      : super(key: key);
  final String appIcon;
  final Size? size;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      appIcon,
      color: color ?? Colors.black,
      height: size?.height ?? 24,
      width: size?.width ?? 24,
    );
  }
}
