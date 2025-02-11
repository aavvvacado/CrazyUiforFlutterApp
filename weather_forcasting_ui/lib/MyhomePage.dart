//for file manager ui

import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        width: 130,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            "Boost",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          icon: Icon(
            Icons.rocket_launch_rounded,
            color: Colors.white,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
          backgroundColor: Colors.blue,
        ),
      ),
      body: Column(
        children: <Widget>[
          MyAppBar(),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "File",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.tune_sharp,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Manager",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lets clean and manage your file's",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 230,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Mycards(
                    mycolor: Color(0xff22293d),
                    mycolor2: Color(0xff434e6c),
                    text1: Text(
                      "Large",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    text2: Text(
                      "92",
                      style: TextStyle(
                        color: Color(0xffcfff00),
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                    text3: Text(
                      "72.40 GB/ 128GB",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Mycards(
                    mycolor: Color(0xff3787eb),
                    mycolor2: Color(0xff1b70da),
                    text1: Text(
                      "Archive",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    text2: Text(
                      "13",
                      style: TextStyle(
                        color: Color(0xffcfff00),
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                    text3: Text(
                      "13.45 GB/ 128GB",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Mycards(
                    mycolor: Color(0xffff5a00),
                    mycolor2: Color(0xffc84e0c),
                    text1: Text(
                      "Favorite",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    text2: Text(
                      "32",
                      style: TextStyle(
                        color: Color(0xffcfff00),
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                    text3: Text(
                      "21.45 GB/ 128GB",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(right: 220),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            width: 370,
            decoration: BoxDecoration(
                color: Color(0xffcdcdcd),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Icon(
                      Icons.music_note,
                      size: 35,
                      color: Color(0xffc4c3ff),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Music",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff576280)),
                    ),
                    Text(
                      "223 items",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            width: 370,
            decoration: BoxDecoration(
                color: Color(0xffcdcdcd),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Icon(
                      Icons.videocam,
                      size: 35,
                      color: Color(0xffff5a00),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vidoes",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff576280)),
                    ),
                    Text(
                      "154 items",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Mycards extends StatelessWidget {
  Color mycolor;
  Color mycolor2;
  Text text1;
  Text text2;
  Text text3;
  Mycards(
      {required this.mycolor,
      required this.mycolor2,
      required this.text1,
      required this.text2,
      required this.text3});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: mycolor, borderRadius: BorderRadius.circular(25)),
      width: 180,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Manager",
                style: TextStyle(
                  color: mycolor2,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              text1,
              text2,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Files",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              Text(
                "items",
                style: TextStyle(
                  color: mycolor2,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: mycolor2,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xffcfff00)),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: text3,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: SliderButton(
              action: () async {},
              label: Text(
                ">>>",
                style: TextStyle(fontSize: 18),
              ),
              backgroundColor: Color(0xff434e6c),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                height: double.infinity,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
                  child: Text(
                    "Clean",
                    style: TextStyle(
                      color: mycolor2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_left,
              size: 40,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
