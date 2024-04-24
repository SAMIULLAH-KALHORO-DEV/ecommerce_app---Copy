import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCirculerContainer extends StatelessWidget {
  const   TCirculerContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = TColors.white,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      padding:const EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: TColors.textWhite.withOpacity(0.1)),
    );
  }
}
