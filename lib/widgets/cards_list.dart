import 'package:banking_app/utilities/themeColors.dart';
import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class CardsList extends StatefulWidget {
  const CardsList({Key? key}) : super(key: key);

  @override
  _CardsListState createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  int _activeCard = 0;
  List<Widget> cards = [
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
  ];

  PageController _pageController = PageController();

  _onPageChanged(index) {
    setState(() {
      _activeCard = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your cards',
                  style: ThemeStyles.primaryTitle,
                ),
                Text(
                  'See All',
                  style: ThemeStyles.seeAll,
                )
              ],
            ),
          ),
          Container(
              height: 250,
              child: PageView.builder(
                itemCount: cards.length,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) => const CreditCard(),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < cards.length; i++)
                  if (_activeCard == i)
                    GestureDetector(
                        onTap: () => _onPageChanged(i),
                        child: const DotIndicator(true))
                  else
                    GestureDetector(
                        onTap: () => _onPageChanged(i),
                        child: const DotIndicator(false))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DotIndicator extends StatefulWidget {
  final bool isActive;
  const DotIndicator(this.isActive, {Key? key}) : super(key: key);

  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: widget.isActive ? ThemeColors.black : ThemeColors.grey),
      ),
    );
  }
}
