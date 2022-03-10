// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        body: ListView(children: [
          Image(
            image: AssetImage('assets/images/nazim_profile.jpg'),
            fit: BoxFit.fitWidth,
            // width: 300,
            // height: 300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
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
            padding: const EdgeInsets.only(left: 20),
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
          ])
        ]),
        bottomNavigationBar: buildSocialButtons());
  }
}

Widget buildSocialButtons() => Card(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buildSocialButton(
        icon: FontAwesomeIcons.facebookSquare,
        color: Color(0xFF0075FC),
        onClicked: () => share(SocialMedia.facebook),
      ),
      buildSocialButton(
        icon: FontAwesomeIcons.linkedin,
        color: Color(0xFF0072b1),
        onClicked: () => share(SocialMedia.linkedin),
      ),
      buildSocialButton(
          icon: FontAwesomeIcons.twitter,
          color: Color(0xFF1da1f2),
          onClicked: () => share(SocialMedia.twitter)),
      buildSocialButton(
          icon: FontAwesomeIcons.envelope,
          color: Colors.black,
          onClicked: () => share(SocialMedia.email)),
      buildSocialButton(
          icon: FontAwesomeIcons.whatsapp,
          color: Colors.green,
          onClicked: () => share(SocialMedia.whatsapp))
    ]));

Future share(SocialMedia platform) async {
  final text = "My business Card";
  final subject = "Business Card";
  final urlShare = Uri.encodeComponent("nazim9873@gmail.com");
  final urls = {
    SocialMedia.facebook:
        ('https://www.facebook.com/sharer/sharer.php?u=$urlShare'),
    SocialMedia.twitter:
        ('https://twitter.com/intent/tweet?url=$urlShare&text=$text'),
    SocialMedia.linkedin:
        ('https://www.linkedin.com/shareArticle?mini=true&url=$urlShare&title=$subject&summary=$text&source='),
    SocialMedia.whatsapp:
        ('https://api.whatsapp.com/send?text=$text%0a$urlShare'),
    SocialMedia.email: ('mailto:?&subject=$subject&body=$urlShare')
  };
  final url = urls[platform]!;
  await launch(url);
}

enum SocialMedia { facebook, twitter, linkedin, email, whatsapp }

Widget buildSocialButton(
        {required IconData icon,
        Color? color,
        required Function() onClicked}) =>
    InkWell(
      child: Container(
        width: 60,
        height: 60,
        child: Center(child: FaIcon(icon, color: color, size: 40)),
      ),
      onTap: onClicked,
    );
