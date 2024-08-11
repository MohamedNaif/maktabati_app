


import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_rating.dart';

class BooksDetailesSection extends StatelessWidget {
  const BooksDetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: Text('Harry Potter and the Goblet of Fire',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w700)),
      ),
      const SizedBox(
        height: 6,
      ),
      Text('J.K. Rowling',
          style: Styles.textStyle18.copyWith(color: Colors.grey)),
      const SizedBox(
        height: 6,
      ),
      const BookRating(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ]);
  }
}
