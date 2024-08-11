import 'package:flutter/material.dart';
import 'package:maktabati_app/core/utils/style.dart';

class CustomBttn extends StatelessWidget {
  const CustomBttn({super.key, required this.backgroundColor, required this.textColor,  this.borderRadius});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius:borderRadius ?? BorderRadius.circular(112))),
          onPressed: () {},
          child: Text(
            r'19.99$',
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
