import 'package:auth_page_ui/Models/text_controllers.dart';

import 'package:auth_page_ui/Screens/signup.dart';
import 'package:auth_page_ui/Widgets/button.dart';
import 'package:auth_page_ui/Widgets/clip_img.dart';
import 'package:auth_page_ui/Widgets/heading.dart';
import 'package:auth_page_ui/Widgets/text_field.dart';
import 'package:auth_page_ui/Widgets/whitespace.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(alignment: Alignment.topRight, child: ClipImage()),
              WhiteSpace(h: _height * 0.03, w: _width),
              Container(
                width: _width,
                padding: EdgeInsets.symmetric(
                    vertical: _height * 0.08, horizontal: _width * 0.09),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading(headText: "Login"),
                    WhiteSpace(h: _height * 0.01, w: _width),
                    const Text(
                      "Please sign in to continue",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                    WhiteSpace(h: _height * 0.09, w: _width),
                     CustomTextField(
                      isPassword: false,
                      labelName: 'EMAIL',
                      prefixIcon: Icons.email_outlined,
                     
                      newController: TextControllers().emailC,
                    ),
                    WhiteSpace(h: _height * 0.05, w: _width),
                     CustomTextField(
                      isPassword: true,
                      labelName: 'PASSWORD',
                      prefixIcon: Icons.lock_outline,
                   
                      newController: TextControllers().passwordC,
                    ),
                    WhiteSpace(h: _height * 0.05, w: _width),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: AuthButton(buttonText: "LOGIN",),
                    ),
                    WhiteSpace(h: _height * 0.13, w: _width),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                          text: TextSpan(
                              style: const TextStyle(fontSize: 17),
                              children: <TextSpan>[
                            const TextSpan(
                                text: "Don't have an account?   ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                )),
                            TextSpan(
                                style: const TextStyle(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (_) {
                                      return const Signup();
                                    }));
                                  },
                                text: "Sign up")
                          ])),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
