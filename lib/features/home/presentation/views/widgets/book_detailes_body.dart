import 'package:flutter/material.dart';

import 'package:maktabati_app/features/home/presentation/views/widgets/book_rating.dart';

import '../../../../../core/utils/style.dart';

import 'book_action.dart';
import 'custom_book_detailes_app_bar.dart';
import 'custom_list_view_item.dart';
import 'similar_books_list_view.dart';

class BookDetailesBody extends StatelessWidget {
  const BookDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const CustomBookDetailesAppBar(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.3,
          child: const CustomListViewItem(),
        ),
        const SizedBox(
          height: 50,
        ),
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
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 38.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('You cas also read', style: Styles.textStyle18)),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 40,
        ),
      ],
    ));
  }
}
