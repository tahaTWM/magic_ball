import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list = [
    'It is\ncertain.',
    'It is\ndecidedly so.',
    'Without\na doubt.',
    'Yes –\ndefinitely.',
    'You may\nrely on it.',
    'As I see\nit, yes.',
    'Most\nlikely.',
    'Outlook\ngood.',
    'Yes.',
    'Signs point\nto yes.',
    'Reply hazy,\ntry again.',
    'Ask again\nlater.',
    'Better not\ntell you now.',
    'Cannot\npredict now.',
    'Concentrate\nand ask\nagain.',
    'Don\'t count\non it.',
    'My reply\nis no.',
    'My sources\nsay no.',
    'Outlook\nnot so good.',
    'Very\ndoubtful'
  ];
  Color _color = Colors.black87;
  String text = 'Click 2 -\nAnswer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(
          title: Text(
            'Ask Any Quesion?',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          actions: [
            SizedBox(
              width: 60,
              child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      _color = Colors.red;
                    });
                  },
                  child: Text("Red")),
            ),
            SizedBox(
              width: 70,
              child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      _color = Colors.green;
                    });
                  },
                  child: Text("Green")),
            ),
            SizedBox(
              width: 60,
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      _color = Colors.blue;
                    });
                  },
                  child: Text("Blue")),
            ),
          ],
          backgroundColor: _color,
        ),
      ),
      body: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: _color,
            image: DecorationImage(
                image: AssetImage(
                  "assets/8-Ball.png",
                ),
                fit: BoxFit.contain),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "CaCudia"),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            text = list[press()];
          });
        },
        onDoubleTap: () {
          setState(() {
            text = list[press()];
          });
        },
      ),
    );
  }

  int press() {
    var x = Random().nextInt(19);
    return x;
  }
}
