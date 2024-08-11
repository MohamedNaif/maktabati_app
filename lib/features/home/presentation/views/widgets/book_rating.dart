import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: mainAxisAlignment, children: [
      const Icon(
        FontAwesomeIcons.solidStar,
        color: Colors.yellow,
      ),
      const SizedBox(width: 7),
      const Text('4.8', style: Styles.textStyle18),
      const SizedBox(width: 3),
      Text('(2800)', style: Styles.textStyle18.copyWith(color: Colors.grey)),
    ]);
  }
}
