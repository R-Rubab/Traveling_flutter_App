import 'package:flutter/material.dart';

import '../../constcolor/colors.dart';

class TitleName extends StatelessWidget {
  final String name;
  var onpress;
  TitleName({super.key, required this.name, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: style.copyWith(fontSize: 26),
          ),
          GestureDetector(
            // onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const DestinationScreen(),
            //     )),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, onpress),
              child: Text(
                'See All',
                style: style.copyWith(
                    fontSize: 18, color: Theme.of(context).primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
