import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'custom_app_bar.dart';
import 'custom_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListView(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          )
        ],
      ),
    );
  }
}
