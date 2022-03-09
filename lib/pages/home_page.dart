// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search');
              }),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('ThreeDots');
              }),
        ]),
        body: ListView(
          children: [
          Image(
            image: AssetImage('assets/images/nazim_profile.jpg'),
            fit: BoxFit.fitWidth,
            // width: 300,
            // height: 300,
          ),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text(
              "Mohd Nazim",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  shadows: [
                    Shadow(
                        color: Colors.deepPurpleAccent,
                        offset: Offset(2, 1),
                        blurRadius: 5)
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text("Software Developer",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.yellow,
                    shadows: [
                      Shadow(
                          color: Colors.yellowAccent,
                          offset: Offset(2, 1),
                          blurRadius: 10)
                    ])),
          ),
          
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(Icons.local_phone, size: 30, color: Colors.purple),
            Text(
              "9355227062",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(Icons.email, size: 30, color: Colors.purple),
            Text(
              "nazim9873@gmail.com",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(Icons.web_asset, size: 30, color: Colors.purple),
            Text(
              "www.nazimer2020.com",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(Icons.place, size: 30, color: Colors.purple),
            Text(
              "Rz-536/24 Tughlakabad Extn New Delhi-110019",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
            )
          ]),
          IconButton(
              onPressed: () {
                print("shared");
              },
              icon: Icon(Icons.share),
              color: Colors.purple,
              )
        ]));
  }
}
