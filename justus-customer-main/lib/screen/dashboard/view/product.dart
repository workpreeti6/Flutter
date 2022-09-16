import 'package:flutter/material.dart';

class Product {
  final String image, title, description, descriiption2, rating, address;
  final int distance, id;

  bool? iron, washing, folding, drycleaning;

  final Color color;
  Product({
    required this.descriiption2,
    required this.id,
    required this.image,
    required this.title,
    required this.rating,
    required this.description,
    required this.distance,
    required this.color,
    required this.address,
    this.iron,
    this.washing,
    this.folding,
    this.drycleaning,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Suresh's Shop",
    rating: "2.4",
    distance: 12,
    description: 'Timing: 9AM - 6PM',
    descriiption2:
        'With growing urbanization and improved standard of living, career has become people’s prime focus. ',
    address: "52,Marunji Road Hinjewadi",
    image: "assets/images/pic1.png",
    color: Color.fromARGB(110, 122, 26, 225),
    iron: true,
    washing: true,
    folding: true,
    drycleaning: true,
  ),
  Product(
    id: 2,
    title: "Ramesh's Shop",
    rating: "2.34",
    distance: 8,
    description: 'Timing: 11AM - 6PM',
    descriiption2:
        'With growing urbanization and improved standard of living, career has become people’s prime focus. As a result, essential household chores are now being outsourced. Off late there is a growing demand for steam ironing services. Availing ironing service has now become hassle-free with numerous clothes ironing service providers to choose from.',
    address: "52,Marunji Road Hinjewadi",
    image: "assets/images/pic2.png",
    color: Color.fromARGB(110, 82, 26, 225),
    iron: true,
    washing: true,
    folding: true,

  ),
  Product(
    id: 3,
    title: "Mahesh's Shop",
    rating: "4.3",
    distance: 10,
    description: 'Timing: 9AM - 7PM',
    descriiption2:
        'With growing urbanization and improved standard of living, career has become people’s prime focus. As a result, essential household chores are now being outsourced. Off late there is a growing demand for steam ironing services. Availing ironing service has now become hassle-free with numerous clothes ironing service providers to choose from.',
    address: "52,Marunji Road Hinjewadi",
    image: "assets/images/pic3.png",
    color: Color.fromARGB(110, 122, 26, 225),
    iron: true,
    washing: true,
   
  ),
  Product(
    id: 4,
    title: "Manan's Shop",
    rating: "3.9",
    distance: 11,
    description: 'Timing: 10AM - 6PM',
    descriiption2:
        'With growing urbanization and improved standard of living, career has become people’s prime focus. As a result, essential household chores are now being outsourced. Off late there is a growing demand for steam ironing services. Availing ironing service has now become hassle-free with numerous clothes ironing service providers to choose from.',
    address: "52,Marunji Road Hinjewadi",
    image: "assets/images/pic4.png",
    color: Color.fromARGB(110, 122, 26, 225),
     iron: true,
    washing: true,
    folding: true,
    drycleaning: true,
  ),
  Product(
    id: 5,
    title: "Sahu Shop",
    rating: "2.6",
    distance: 12,
    description: 'Timing: 9AM - 6PM',
    descriiption2:
        'With growing urbanization and improved standard of living, career has become people’s prime focus. As a result, essential household chores are now being outsourced. Off late there is a growing demand for steam ironing services. Availing ironing service has now become hassle-free with numerous clothes ironing service providers to choose from.',
    address: "52,Marunji Road Hinjewadi",
    image: "assets/images/pic5.png",
    color: Color.fromARGB(110, 122, 26, 225),

    washing: true,
    folding: true,
    drycleaning: true,
  ),
  Product(
    id: 6,
    title: "Shruti's Laundary",
    rating: "5.0",
    distance: 12,
    description: 'Timing: 8AM - 6PM',
    descriiption2:
        'With growing urbanization and improved standard of living, career has become people’s prime focus. As a result, essential household chores are now being outsourced. Off late there is a growing demand for steam ironing services. Availing ironing service has now become hassle-free with numerous clothes ironing service providers to choose from.',
    address: "52,Marunji Road Hinjewadi",
    image: "assets/images/pic6.png",
    color: Color.fromARGB(110, 122, 26, 225),
     iron: true,
    washing: true,
    folding: true,
    drycleaning: true,
  ),
];
