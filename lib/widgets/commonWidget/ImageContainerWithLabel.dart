import 'package:ecommerce/widgets/commonWidget/CustomImageContainer.dart';
import 'package:flutter/material.dart';

class ImageContainerWithLabel extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double borderWidth;
  final Color borderColor;
  final String label;

  ImageContainerWithLabel({
    required this.imageUrl,
    this.width,
    this.height,
    this.borderWidth = 0,
    this.borderColor = Colors.white,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomImageContainer(
          imageUrl: imageUrl,
          width: width,
          height: height,
          borderWidth: borderWidth,
          borderColor: borderColor,
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
            color: Colors.amber.withOpacity(0.8),
            child: Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
