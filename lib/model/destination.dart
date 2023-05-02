import 'package:flutter_application_2/model/activity.dart';

class Destination {
  String? imgurl;
  String city;
  String country;
  String destination;
  List<Activity> activities;

  Destination({
    this.imgurl,
    required this.city,
    required this.country,
    required this.destination,
    required this.activities,
  });
}

// -----------------------

// --------------------------
List<Activity> activities = [
  Activity(
    imgurl:
        'https://images.pexels.com/photos/463734/pexels-photo-463734.jpeg?auto=compress&cs=tinysrgb&w=600',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: '3',
    price: '140',
  ),
  Activity(
    imgurl:
        'https://images.pexels.com/photos/2901212/pexels-photo-2901212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    name: 'Stijin Dijkstra',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: '3',
    price: '140',
  ),
  Activity(
    imgurl:
        'https://images.pexels.com/photos/2074109/pexels-photo-2074109.jpeg?auto=compress&cs=tinysrgb&w=600',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: '5',
    price: '210',
  ),
  Activity(
    imgurl:
        'https://images.pexels.com/photos/2734521/pexels-photo-2734521.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: '4',
    price: '110',
  ),
  Activity(
    imgurl:
        'https://images.pexels.com/photos/1612461/pexels-photo-1612461.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: '3',
    price: '140',
  ),
  Activity(
    imgurl:
        'https://images.pexels.com/photos/3601422/pexels-photo-3601422.jpeg?auto=compress&cs=tinysrgb&w=600',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ['9:00 am', '11:00 am'],
    rating: '5',
    price: '140',
  ),
];

// ---------------------------
List<Destination> destinations = [
  Destination(
    imgurl:
        'https://images.pexels.com/photos/463734/pexels-photo-463734.jpeg?auto=compress&cs=tinysrgb&w=600',
    city: 'Benguela',
    country: 'Angola',
    destination: 'Visit Angola for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgurl:
        'https://images.pexels.com/photos/2901212/pexels-photo-2901212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    city: 'Sukth',
    country: 'Albania',
    destination: 'Visit Albania for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgurl:
        'https://images.pexels.com/photos/2074109/pexels-photo-2074109.jpeg?auto=compress&cs=tinysrgb&w=600',
    city: 'Venice',
    country: 'italy',
    destination: 'Visit italy for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgurl:
        'https://images.pexels.com/photos/2734521/pexels-photo-2734521.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    city: 'Paris',
    country: 'France',
    destination: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgurl:
        'https://images.pexels.com/photos/1612461/pexels-photo-1612461.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    city: 'istanbol',
    country: 'Turkey',
    destination: 'Visit Turkey for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgurl:
        'https://images.pexels.com/photos/3601422/pexels-photo-3601422.jpeg?auto=compress&cs=tinysrgb&w=600',
    city: 'Jalalabad',
    country: 'Afghanistan',
    destination:
        'Visit Afghanistan for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
