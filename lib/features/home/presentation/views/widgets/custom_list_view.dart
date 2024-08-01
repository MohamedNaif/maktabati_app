import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.23,
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CustomListViewItem();
            }),
      ),
    );
  }
}
