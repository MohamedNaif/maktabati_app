import 'package:flutter/material.dart';

import 'book_action.dart';
import 'books_detailes_section.dart';
import 'custom_book_detailes_app_bar.dart';
import 'custom_list_view_item.dart';
import 'similar_book_section.dart';

class BookDetailesBody extends StatelessWidget {
  const BookDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
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
                const BooksDetailesSection(),

                const SizedBox(
                  height: 37,
                ),
                const BookAction(),
                // const SizedBox(
                //   height: 16,
                // ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBookSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
