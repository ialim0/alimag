import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //title section
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
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.red,
                    ),
                    Text(
                      '55',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Icon(
                      Icons.thumb_down,
                      color: Colors.red,
                    ),
                    Text(
                      '25',
                    ),
                  ],
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

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("AliMag"),
          ),
          body: ListView(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://beninwebtv.com/wp-content/uploads/2022/05/Senegal-vs-Benin-CAN.jpg",
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white38,
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              descriptionSection,
              buttonSection,
            ],
          ),
        ));
  }
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
