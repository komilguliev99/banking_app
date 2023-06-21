import 'package:banking_app/utilities/themeColors.dart';
import 'package:banking_app/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, bottom: 16, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: ThemeStyles.primaryTitle,
                ),
                Text('See All', style: ThemeStyles.seeAll)
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [
                TransactionCard(
                  title: 'Fintory GmbH',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.777, 45\$',
                  letter: 'F',
                  color: Colors.black,
                ),
                 TransactionCard(
                  title: 'Dominik Schmidt',
                  subTitle: 'Hotel Booking',
                  price: '- 3.457, 23\$',
                  letter: 'D',
                  color: Color(0xfffe695d),
                ),
                 TransactionCard(
                  title: 'Komil Guliev',
                  subTitle: 'Marketplace Alifshop',
                  price: '- 4.576, 45\$',
                  letter: 'K',
                  color: Color.fromARGB(255, 25, 106, 173),
                ),
                 TransactionCard(
                  title: 'Manuchehr M',
                  subTitle: 'Tajhoney shop',
                  price: '- 3.250, 45\$',
                  letter: 'M',
                  color: Colors.green,
                ),
                 TransactionCard(
                  title: 'Fintory GmbH',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.777, 45\$',
                  letter: 'F',
                  color: Colors.black,
                ),
                 TransactionCard(
                  title: 'Fintory GmbH',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.777, 45\$',
                  letter: 'F',
                  color: Colors.amberAccent,
                ),
                 TransactionCard(
                  title: 'Fintory GmbH',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.777, 45\$',
                  letter: 'F',
                  color: Colors.orange,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
