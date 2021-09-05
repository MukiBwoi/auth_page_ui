import 'package:flutter/material.dart';

class ClipImage extends StatelessWidget {
  const ClipImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerRight,
      width: _width * 0.4,
      height: _height * 0.15,
      color: Colors.white,
      child: const Image(
        fit: BoxFit.cover,
        image: AssetImage("./assets/clip.png"),
      ),
    );
  }
}
