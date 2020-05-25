import 'package:flutter/widgets.dart';

class Person {
  final String image;
  final String distance;
  final String name;
  final int age;
  final String hobby1;
  final String hobby2;
  final String hobby3;
  Person({
    this.distance,
    this.image,
    this.name,
    this.age,
    this.hobby1,
    this.hobby2,
    this.hobby3,
  });
}

class UserData with ChangeNotifier {
  final List<Person> person = [
    Person(
      image: 'assets/images/woman4.jpg',
      distance: '200Km',
      name: 'Kyan',
      age: 22,
      hobby1: 'Music',
      hobby2: 'Football',
      hobby3: 'Travelling'
    ),
      Person(
      image: 'assets/images/woman1.jpg',
      distance: '200Km',
      name: 'Karon',
      age: 23,
      hobby1: 'Fashion',
      hobby2: 'Shopping',
      hobby3: 'Swimming'
    ),
      Person(
      image: 'assets/images/woman2.jpg',
      distance: '200Km',
      name: 'Aston',
      age: 26,
      hobby1: 'Pubg',
      hobby2: 'Singing',
      hobby3: 'Painting'
    ),
      Person(
      image: 'assets/images/woman3.jpg',
      distance: '200Km',
      name: 'Alison',
      age:  23,
      hobby1: 'Poker',
      hobby2: 'Chess',
      hobby3: 'Painting',
    ),
    Person(
      image: 'assets/images/woman5.jpg',
      distance: '200Km',
      name: 'Alexandru ',
      age:  23,
      hobby1: 'Poker',
      hobby2: 'Chess',
      hobby3: 'Painting',
    ),
     Person(
      image: 'assets/images/woman6.jpg',
      distance: '200Km',
      name: 'Jim ',
      age:  23,
      hobby1: 'Poker',
      hobby2: 'Chess',
      hobby3: 'Painting',
    ),
    
    Person(
      image: 'assets/images/woman7.jpg',
      distance: '200Km',
      name: 'Mia',
      age:  23,
      hobby1: 'Poker',
      hobby2: 'Chess',
      hobby3: 'Painting',
    ),
     Person(
      image: 'assets/images/woman8.jpg',
      distance: '200Km',
      name: 'Augusto',
      age:  23,
      hobby1: 'Poker',
      hobby2: 'Chess',
      hobby3: 'Painting',
    ),
     Person(
      image: 'assets/images/woman9.jpg',
      distance: '200Km',
      name: 'Keller',
      age:  23,
      hobby1: 'Poker',
      hobby2: 'Chess',
      hobby3: 'Painting',
    ),
  ];
  
}
