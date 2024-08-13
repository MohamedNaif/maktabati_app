import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CustomListViewItem();
            }),
      ),
    );
  }
}
