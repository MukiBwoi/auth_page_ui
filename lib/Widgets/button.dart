import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;
  const AuthButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {},
      child: Container(
        width: _width * 0.35,
        height: _height * 0.065,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color(0xfff6d365),
              Color(0xfffda085),
            ],
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 15),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        )),
      ),
    );
  }
}
