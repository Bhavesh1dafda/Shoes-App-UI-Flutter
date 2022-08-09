import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'shoes2.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List topics = ['All', 'FOR MAN', 'FOR KIDS', 'FOR WOMAN'];
  var topicChosen = 'All';
  List shoes = [
    'images/shoes1.png',
    'images/shoes2.png',
    'images/shoes3.png',
    'images/shoes4.png',
    'images/shoes5.png',
  ];
  List name = ['Destiny', 'Woodland', 'Nike', 'Air Max', 'Spongy'];
  List des = [
    'Comfertable Red',
    'Beutifull Woodland',
    'Gradiund Red Color',
    'Woodland Original Color',
    'Yellow Sport Shoes'
  ];
  List price = [
    '159',
    '199',
    '279',
    '399',
    '199',
  ];

  List<List<Color>> colors = [
    [Colors.pink.withOpacity(0.2), Colors.white.withOpacity(0.1)],
    [Colors.purple.withOpacity(0.2), Colors.white.withOpacity(0.1)],
    [Colors.orange.withOpacity(0.3), Colors.white.withOpacity(1)],
    [Colors.red.withOpacity(0.3), Colors.white.withOpacity(1)],
    [Colors.grey.withOpacity(0.4), Colors.white.withOpacity(1)],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          toolbarHeight: 80,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black.withOpacity(0.65),
            size: 50,
          ),
          title: Icon(
            Icons.eco,
            color: Colors.black,
            size: 35,
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.shopping_cart_checkout,
              color: Colors.black.withOpacity(0.65),
              size: 35,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20),
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "BELIVE YOU CAN",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "MAKE IMPACT",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: topics.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          topicChosen = topics[index];
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: topicChosen == topics[index]
                                ? Colors.black.withOpacity(0.8)
                                : Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          topics[index],
                          style: TextStyle(
                            color: topicChosen == topics[index]
                                ? Colors.white
                                : Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: shoes.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(() => Shoes2(
                          {
                            'title': name[index],
                            'des': des[index],
                            'price': price[index],
                            'image': shoes[index],
                          },
                        ));
                  },
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 25,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 75,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 20, top: 10, bottom: 10),
                                padding: EdgeInsets.all(20),
                                height: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: colors[index],
                                        begin: Alignment.topRight),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                          color: colors[index][0],
                                          blurRadius: 3,
                                          offset: Offset(3, 3)),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 5),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$' + price[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    FaIcon(
                                      Icons.add_circle_rounded,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    Text(
                                      des[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 65,
                            child: Hero(
                              tag: shoes[index],
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 20, top: 5, bottom: 5),
                                height: 150,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: AssetImage(shoes[index]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 35,
                            child: Container(),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
