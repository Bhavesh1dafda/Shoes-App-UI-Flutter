import 'package:flutter/material.dart';

class Shoes2 extends StatefulWidget {
  Map details;
  Shoes2(this.details);

  @override
  State<Shoes2> createState() => _Shoes2State();
}

class _Shoes2State extends State<Shoes2> {
  var size = 42;
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
            Icons.favorite_outline_rounded,
            color: Colors.black.withOpacity(0.65),
            size: 35,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 30), children: [
        Center(
          child: Text(
            widget.details['title'],
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Center(
          child: Text(
            'Destiny' + widget.details['des'],
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
          ),
        ),
        Hero(
            tag: widget.details['image'],
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.details['image']),
                      fit: BoxFit.fitWidth)),
            )),
        Row(
          children: [
            Icon(
              Icons.water_rounded,
              color: Colors.blue,
            ),
            Text(
              '  WaterProof',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.spa,
              color: Colors.orange,
            ),
            Text(
              '  Eco Material',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.local_laundry_service,
              color: Colors.purple,
            ),
            Text(
              '  Flexible',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        SizedBox(height: 20),
        Text(
          'SIZE',
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        Container(
          height: 30,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      size = index + 40;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    decoration: BoxDecoration(
                        color: size == index + 40
                            ? Colors.black.withOpacity(0.8)
                            : Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      '${index + 40}',
                      style: TextStyle(
                        color: size == index + 40
                            ? Colors.white
                            : Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Text(
          'PRICE',
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                widget.details['price'],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Center(
          child: Text(
            "Delivered Within 3-8 Days",
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
        )
      ]),
    );
  }
}
