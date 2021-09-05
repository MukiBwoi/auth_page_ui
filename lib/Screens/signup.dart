import 'package:auth_page_ui/Models/text_controllers.dart';

import 'package:auth_page_ui/Widgets/button.dart';
import 'package:auth_page_ui/Widgets/clip_img.dart';
import 'package:auth_page_ui/Widgets/heading.dart';
import 'package:auth_page_ui/Widgets/text_field.dart';
import 'package:auth_page_ui/Widgets/whitespace.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.05),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const ClipImage(),
                  ],
                ),
                WhiteSpace(h: _height * 0.05, w: _width),
                Container(
                  width: _width,
                  padding: EdgeInsets.symmetric(horizontal: _width * 0.09),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Heading(headText: "Create Account"),
                      WhiteSpace(h: _height * 0.05, w: _width),
                      CustomTextField(
                        labelName: "FULL NAME",
                        prefixIcon: Icons.person_outlined,
                        isPassword: false,
                 
                        newController: TextControllers().firstNameC,
                      ),
                      WhiteSpace(h: _height * 0.03, w: _width),
                      CustomTextField(
                        labelName: "EMAIL",
                        prefixIcon: Icons.email_outlined,
                        isPassword: false,

                        newController: TextControllers().createEmailC,
                      ),
                      WhiteSpace(h: _height * 0.03, w: _width),
                      CustomTextField(
                        labelName: "PASSWORD",
                        prefixIcon: Icons.lock_outlined,
                        isPassword: false,
                      
                        newController: TextControllers().createPasswordC,
                      ),
                      WhiteSpace(h: _height * 0.03, w: _width),
                      CustomTextField(
                        labelName: "CONFIRM PASSWORD",
                        prefixIcon: Icons.lock_outlined,
                        isPassword: false,
                        
                        newController: TextControllers().confirmPasswordC,
                      ),
                      WhiteSpace(h: _height * 0.05, w: _width),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: AuthButton(
                          buttonText: "SIGN UP",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
