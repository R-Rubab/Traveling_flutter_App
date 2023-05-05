import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constcolor/colors.dart';
import '../../model/hotel.dart';

class Hotels extends StatelessWidget {
  const Hotels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: const Color.fromARGB(255, 244, 218, 125),
      width: double.infinity,
      height: 360,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          HotelManagement hotel = hotels[index];
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
                              color: Color.fromARGB(155, 149, 148, 140),
                              offset: Offset(3.9, 4),
                              blurRadius: 9,
                              spreadRadius: 1.3,
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(22),
                          ),
                          color: Color.fromARGB(255, 241, 239, 234),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${hotel.name}',
                                style: style,
                              ),
                              Text(
                                '${hotel.address}',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 132, 123, 123),
                                    fontSize: 19),
                              ),
                              Text(
                                ' ${hotel.price} /night',
                                style: style,
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
                      borderRadius: const BorderRadius.all(Radius.circular(33)),
                      child: Image(
                          height: 220,
                          width: 280,
                          fit: BoxFit.cover,
                          image: AssetImage('${hotel.imgurl}')),
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
                                bottomLeft: Radius.circular(33))),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('${hotel.address}',
                                  style: style.copyWith(color: white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(
                                children: <Widget>[
                                  const Icon(
                                    FontAwesomeIcons.arrowTrendUp,
                                    size: 30,
                                    color: white,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text('${hotel.price}', style: style1),
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
    );
  }
}
