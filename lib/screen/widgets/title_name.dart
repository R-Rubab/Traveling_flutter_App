import 'package:flutter/material.dart';

import '../../constcolor/colors.dart';

class TitleName extends StatelessWidget {
  final String name;
  const TitleName({super.key, required this.name});

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
            onTap: () {
              // print('object');
            },
            child: Text(
              'See All',
              style: style.copyWith(
                  fontSize: 18, color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
