import 'package:app_1/likewidget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'likedown.dart';

class blogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Le mactch Bénin vs Sénégal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Text("Par  I.Alim"),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [likeWidget()],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [likedownWidget()],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    //share and comment section
    Widget buttonSection = Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _builButtonColumn(
              Color.fromARGB(255, 25, 20, 3), Icons.comment, "Commenter"),
          _builButtonColumn(
              Color.fromARGB(255, 25, 20, 3), Icons.share, "Partager"),
        ],
      ),
    );
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          "Why do we use itWhy do we use itWhy do we use itWhy do we use itWhy do \n AliWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itwe use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use itWhy do we use it",
          softWrap: true,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("AliMag"),
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: CachedNetworkImage(
                imageUrl:
                    "https://beninwebtv.com/wp-content/uploads/2022/05/Senegal-vs-Benin-CAN.jpg",
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white38,
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 600,
                height: 500,
                fit: BoxFit.contain,
              ),
            ),
          ),
          titleSection,
          descriptionSection,
          buttonSection,
        ],
      ),
    );
  }

  Column _builButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(icon, color: color),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}
