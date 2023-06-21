import 'package:flutter/material.dart';

import '../utilities/themeColors.dart';

class CardInPage extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  const CardInPage(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.letter,
      required this.color})
      : super(key: key);

  @override
  _CardInPageState createState() => _CardInPageState();
}

class _CardInPageState extends State<CardInPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 65,
        width: 350,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(22.5)),
                      child: Center(
                        child: Text(
                          widget.letter,
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: ThemeStyles.otherDetailsPrimary,
                        ),
                        Text(
                          widget.subTitle,
                          style: ThemeStyles.otherDetailsSecondary,
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(Icons.keyboard_arrow_right)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
