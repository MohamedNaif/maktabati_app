import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'similar_books_list_view.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 38.0),
          child: Text('You cas also read', style: Styles.textStyle18),
        ),
        SizedBox(
          height: 16,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
