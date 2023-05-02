import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/destination.dart';
import 'package:flutter_application_2/section/destinaion1.dart';
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
                child: ListView(children: <Widget>[
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
                  Column(children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 26, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Top  Destinations',
                            style: style.copyWith(fontSize: 26),
                          ),
                          GestureDetector(
                            onTap: () {
                              // print('object');
                            },
                            child: Text(
                              'See All',
                              style: style.copyWith(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Destination1(),
                    SizedBox(
                      // color: const Color.fromARGB(255, 244, 218, 125),
                      width: double.infinity,
                      height: 360,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: destinations.length,
                        itemBuilder: (context, index) {
                          Destination destination = destinations[index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 10),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  // left: 60,
                                  top: 140,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 280,
                                        decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  155, 149, 148, 140),
                                              offset: Offset(3.9, 4),
                                              blurRadius: 9,
                                              spreadRadius: 1.3,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(22),
                                          ),
                                          color: Color.fromARGB(
                                              255, 241, 239, 234),
                                        ),
                                      ),
                                      Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 26),
                                          child: Column(
                                            children: const [
                                              Text(
                                                '125 activitie',
                                                style: style,
                                              ),
                                              Text(
                                                'Enjoy best trips from top travel \nagenciesn at best price',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 132, 123, 123),
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(33)),
                                      child: Image(
                                          height: 220,
                                          width: 280,
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              '${destination.imgurl}')),
                                    ),
                                    Positioned(
                                      // left: 16.62,
                                      top: 125,
                                      child: Container(
                                        height: 95,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            color: lightgreen,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(33),
                                                bottomLeft:
                                                    Radius.circular(33))),
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text(destination.city,
                                                  style: style.copyWith(
                                                      color: white)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Row(
                                                children: <Widget>[
                                                  const Icon(
                                                    FontAwesomeIcons
                                                        .arrowTrendUp,
                                                    size: 30,
                                                    color: white,
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(destination.country,
                                                      style: style1),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ])
                ]))));
  }
}
