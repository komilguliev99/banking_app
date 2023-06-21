import 'package:banking_app/screens/tansaction_screen.dart';
import 'package:banking_app/utilities/themeColors.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  const TransactionCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.letter,
      required this.color})
      : super(key: key);

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TransactionScreen(
                        color: widget.color,
                        title: widget.title,
                        subTitle: widget.subTitle,
                        letter: widget.letter,
                        price: widget.price,
                      )));
        },
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
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 0.5,
                endIndent: 16,
                indent: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
