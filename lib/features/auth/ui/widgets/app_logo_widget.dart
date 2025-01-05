//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/assets_path.dart';
class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
    this.width,
    this.height,
    this.boxfit
  });
  final double? width;
  final double? height;
  final BoxFit? boxfit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsPath.applogoSvg,
      width: width??90,
      height: height??90,
      fit: boxfit?? BoxFit.scaleDown,
    );
  }
}