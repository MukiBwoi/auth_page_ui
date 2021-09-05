import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final dynamic labelName;
  final IconData prefixIcon;
  final bool isPassword;
  final TextEditingController newController;

  const CustomTextField({
    Key? key,
    @required this.labelName,
    required this.prefixIcon,
    required this.isPassword,
    required this.newController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(5, 7), // changes position of shadow
            )
          ]),
      child: Form(
        child: TextFormField(
            controller: newController,
            obscureText: isPassword,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            cursorHeight: 25,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.black,
              ),
              suffix: isPassword
                  ? GestureDetector(
                      child: const Text(
                        "FORGOT  ",
                        style: TextStyle(color: Colors.amber, fontSize: 15),
                      ),
                    )
                  : const SizedBox(
                      width: 0,
                      height: 0,
                    ),
              labelStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
              focusedBorder: InputBorder.none,
              labelText: labelName,
              border: InputBorder.none,
            ),
        )  
      ),
    );
  }
}


