import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Home',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/analytics.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/search.svg')),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset('assets/more.svg'))
            ],
          )
        ],
      ),
    );
  }
}
