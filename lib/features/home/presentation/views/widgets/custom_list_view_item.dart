


import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 3.5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: const BoxDecoration(
            // color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AppAssets.test))),
      ),
    );
  }
}

