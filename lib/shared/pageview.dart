import 'package:e_library/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageView extends StatefulWidget {
  final PageViewRomance book;
  const PageView({Key? key, required this.book}) : super(key: key);

  @override
  State<PageView> createState() => _PageViewState();
}

class _PageViewState extends State<PageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380.0,
      // child: PageView(
      //   scrollDirection: Axis.horizontal,
      //   children: [PageViewRomance(), PageViewHorror()],
      // ),
    );
  }
}
