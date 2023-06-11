import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double borderWidth;
  final Color borderColor;

  CustomImageContainer({
    required this.imageUrl,
    this.width,
    this.height,
    this.borderWidth = 0,
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
