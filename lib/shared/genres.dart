import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_library/models/genre.dart';

class HorizontalGenre extends StatelessWidget {
  final Genre genre;
  const HorizontalGenre({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          genre.active ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 2, // This can be the space you need between text and underline
              ),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.white,
                    width: 2.0, // This would be the width of the underline
                  ))
              ),
              child: Text(
                genre.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          )
          : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              genre.name,
              style: const TextStyle(
                color: greyColor,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
