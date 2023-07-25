// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Zedat_home(),
  ));
}

class Zedat_home extends StatefulWidget {
  const Zedat_home({super.key});

  @override
  State<Zedat_home> createState() => _Zedat_homeState();
}

class _Zedat_homeState extends State<Zedat_home> {
  List<String> prdcts = [
    "Finance",
    'Education',
    'Insurance',
    'Doctors',
    "Finance",
    'Education',
    'Insurance',
    'Doctors'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.kitchen,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'ZEDZAT',
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // 1st Row
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      weight: 30,
                    ),
                    Text(
                      'Govindapuram, Kozhikode, Kerala, India',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            // Carousel
            Container(
              child: Center(
                  child: CarouselSlider(items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image:
                          NetworkImage("https://i.pinimg.com/564x/0c/ae/79/0cae79de1802fad3bf0a5c4c5da5fc1d.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ], options: CarouselOptions())),
            ),

            // Buttons
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 170,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Product',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 170,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Service',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black))),
                  )
                ],
              ),
            ),
            // Icons
            Container(
              height: 200,
              child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10, crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(82, 158, 158, 158),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/fna.png',
                              color: Colors.blue,
                              height: 40,
                            ),
                          ),
                          Text(prdcts[index])
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Offers'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Rewards'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ]),
    );
  }
}
