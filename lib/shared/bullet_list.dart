import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;

  BulletList(this.strings);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '\u2022',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.3,
                  color: greyColor,
                  decoration: TextDecoration.none
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    str,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quick Sand',
                        fontSize: 16,
                        color: greyColor,
                        height: 1.3
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}