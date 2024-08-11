import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_detailes_app_bar.dart';

class BookDetailesBody extends StatelessWidget {
  const BookDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [
        CustomBookDetailesAppBar(),
      ],
    ));
  }
}
