import 'package:flutter/material.dart';

class weather_forcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff1ae7e5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff545567), Color(0xff2c2c38)]),
            ),
          ),
          Column(
            children: [
              Myappbar(),
              SizedBox(
                height: 50,
              ),
              Mycard(
                color1: Color(0xffffcb52),
                color2: Color(0xffff7d04),
                country: "New York",
                imageurl: "assets/images/sun.png",
                weather: "Sunny",
                temp: 12,
              ),
              Mycard(
                color1: Color(0xff2afdb7),
                color2: Color(0xff08c893),
                country: "Mumbai",
                imageurl: "assets/images/cloud.png",
                weather: "Cloudy",
                temp: 25,
              ),
              Mycard(
                color1: Color(0xffc064dd),
                color2: Color(0xff5d28fe),
                country: "Sydney",
                imageurl: "assets/images/rainsun.png",
                weather: "Haze",
                temp: 12,
              ),
              Mycard(
                color1: Color(0xff5581f1),
                color2: Color(0xff1254fc),
                country: "Tokyo",
                imageurl: "assets/images/raining.png",
                weather: "Rainy",
                temp: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Myappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        //it addapt the left area
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "EDIT",
                style: TextStyle(
                  color: Color(0xff3effff),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              Text(
                "City Management",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
              Text(
                "DONE",
                style: TextStyle(
                  color: Color(0xff3effff),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Mycard extends StatelessWidget {
  late Color color1;
  late Color color2;
  late String country;
  late String weather;
  late String imageurl;
  late int temp;
  Mycard(
      {required this.color1,
      required this.color2,
      required this.country,
      required this.weather,
      required this.imageurl,
      required this.temp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      child: Container(
        width: double.infinity, //
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [
            color1,
            color2,
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      imageurl,
                      width: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            country,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            weather,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "$temp °",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
