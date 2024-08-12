import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'custom_text_form.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomTextForm(),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: CustomSreachBookItem(),
        ),
      ],
    );
  }
}

class CustomSreachBookItem extends StatelessWidget {
  const CustomSreachBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        });
  }
}
