// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testing/components/futsalcard.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Welcome Courtify",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Pick your futsal court",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search for Futsal, Venue...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.blue,
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.blue,
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotion",
                        ),
                        Tab(
                          text: "Tournament",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //First index(TABS)
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                futsalCard(
                                  'https://cf.shopee.com.my/file/9e25432a4bb3eaacedf578278b61c22b',
                                  "Dato' Lundang",
                                  "Court A",
                                ),
                                futsalCard(
                                  'https://bsg-i.nbxc.com/uploads/56/67/c3/6efc6c87637c2cb21582f95762.jpg',
                                  "Dato' Lundang 2",
                                  "Outdoor Court",
                                ),
                                futsalCard(
                                  'https://image.made-in-china.com/2f0j00BYofzQNhRupa/Indoor-Polypropylene-Plastic-Futsal-Court-Flooring.jpg',
                                  "Dato' Lundang 3",
                                  "Court C",
                                )
                                //Now let's add and test our first card
                              ],
                            ),
                          ),
                          //tabs 2
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                 futsalCard(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLQgqBncZZFhY1wzD3y3E5LqEpp4uJbYyc9A&usqp=CAU',
                                  "Free 1 Hour Promo",
                                  "Ramadan Specials",
                                ),
                                //Here you can add what ever you want
                              ],
                            ),
                          ),
                          //tabs 3
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                  futsalCard(
                                  'https://image.made-in-china.com/2f0j00BYofzQNhRupa/Indoor-Polypropylene-Plastic-Futsal-Court-Flooring.jpg',
                                  "U13 Futsal Open",
                                  "Dun Bunut Payong",
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
