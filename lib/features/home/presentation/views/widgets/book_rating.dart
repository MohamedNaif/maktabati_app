


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Icon(
        FontAwesomeIcons.solidStar,
        color: Colors.yellow,
      ),
      SizedBox(width: 5),
      Text('4.8(2800)', style: Styles.textStyle18),
    ]);
  }
}
