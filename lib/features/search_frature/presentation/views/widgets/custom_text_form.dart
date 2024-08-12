


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder buildOutlineInputBorder() {
      return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(
          12,
        ),
      );
    }

    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }
}
