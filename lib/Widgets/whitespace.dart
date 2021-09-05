import 'package:flutter/material.dart';


class WhiteSpace extends StatelessWidget {
final double h;
final double w;
  const WhiteSpace({ Key? key, required this.h, required this.w }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      width: w,
      height: h,
    );
  }
}