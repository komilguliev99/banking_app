import 'package:banking_app/utilities/themeColors.dart';
import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/add_note.dart';
import 'package:banking_app/widgets/appbar.dart';
import 'package:banking_app/widgets/cards_list.dart';
import 'package:banking_app/widgets/other_details_divider.dart';
import 'package:banking_app/widgets/recent_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/card_in_page.dart';

class TransactionScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;

  const TransactionScreen(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.letter,
      required this.color})
      : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sent', style: ThemeStyles.primaryTitle),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        shadowColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 8, top: 32),
                  child: Row(
                    children: [
                      Text(
                        'Outgoing Transaction',
                        style: ThemeStyles.primaryTitle,
                      )
                    ],
                  ),
                ),
                CardInPage(
                  color: widget.color,
                  title: widget.title,
                  subTitle: widget.subTitle,
                  letter: widget.letter,
                  price: widget.price,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 32, bottom: 8),
                  child: Row(
                    children: [
                      Text('Details', style: ThemeStyles.primaryTitle)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 5),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Image(
                          image: AssetImage('assets/transfer.png'),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        'Bank Transfer',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Container(
                          height: 32,
                          width: 74,
                          decoration: BoxDecoration(
                              color: ThemeColors.lightGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            '#finance',
                            style: ThemeStyles.tagText,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Container(
                          height: 32,
                          width: 74,
                          decoration: BoxDecoration(
                              color: ThemeColors.lightGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            '#fintory',
                            style: ThemeStyles.tagText,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Container(
                          height: 32,
                          width: 74,
                          decoration: BoxDecoration(
                              color: ThemeColors.lightGrey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            '#design',
                            style: ThemeStyles.tagText,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SvgPicture.asset('assets/edit.svg'),
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IBAN',
                        style: ThemeStyles.otherDetailsSecondary,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'DE12 1232 4325 5322 2342 23',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BIC',
                        style: ThemeStyles.otherDetailsSecondary,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'CIPHAR33XX',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Posting Key',
                        style: ThemeStyles.otherDetailsSecondary,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1222',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Posting Text',
                        style: ThemeStyles.otherDetailsSecondary,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Landing Page',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Purpose Code',
                        style: ThemeStyles.otherDetailsSecondary,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'CDAO',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SEPA Reference',
                        style: ThemeStyles.otherDetailsSecondary,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'DE12 1232 4325 5322 2342 23',
                        style: ThemeStyles.otherDetailsPrimary,
                      )
                    ],
                  ),
                ),
                const OtherDetailsDivider(),
              ],
            ),
            const AddNote()
          ],
        ),
      ),
    );
  }
}
