import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'item_detailes.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18,
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.9 / 3.5,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(AppAssets.test))),
              ),
            ),
            const SizedBox(width: 20),
            const ItemDetails()
          ],
        ),
      ),
    );
  }
}
