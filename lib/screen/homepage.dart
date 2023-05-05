import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/widgets/destinaion1.dart';
import 'package:flutter_application_2/screen/widgets/hotels.dart';
import 'package:flutter_application_2/screen/widgets/title_name.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constcolor/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> icons = [
    FontAwesomeIcons.planeArrival,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personBiking,
    FontAwesomeIcons.car,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIcons = index;
        });
      },
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: const Duration(seconds: 2),
        child: CircleAvatar(
          foregroundColor: const Color.fromARGB(255, 29, 82, 2),
          backgroundColor: selectedIcons == index
              ? Theme.of(context).primaryColor
              : lightgreen,
          radius: 32.0,
          child: Icon(icons[index]),
        ),
      ),
    );
  }

  int selectedIcons = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 70, bottom: 14),
                child: Text(
                  'What you would like to find?',
                  style: style,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
              Column(
                children: const <Widget>[
                  TitleName(
                    name: 'Top Destinations',
                  ),
                  Destination1(),
                  TitleName(
                    name: 'Exclusive Hotels',
                  ),
                  Hotels()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
