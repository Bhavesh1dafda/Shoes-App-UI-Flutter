import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:shoes_app_ui/shoes1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/back.jpeg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.2),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  "Destiny",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 130,
              ),
              Text(
                "If you are looking for stylish men's shoes online",
                style: TextStyle(
                    fontSize: 30, color: Colors.white.withOpacity(0.8)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 150),
              InkWell(
                onTap: () {
                  Get.to(
                    Page1(),
                  );
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ENTER & SHOPPING       ",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        FontAwesomeIcons.shoePrints,
                        color: Colors.orangeAccent,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Buy men's shoes online at up to 60% off ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 19),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
