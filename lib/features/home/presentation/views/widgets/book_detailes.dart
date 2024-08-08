


import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_rating.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Text('Harry Potter and the Goblet of Fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700)),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text('J.K. Rowling', style: Styles.textStyle16),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            Text(r'19.99$',
                style:
                    Styles.textStyle20.copyWith(fontWeight: FontWeight.w600)),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.1,
            ),
            const BookRating()
          ],
        )
      ]),
    );
  }
}
