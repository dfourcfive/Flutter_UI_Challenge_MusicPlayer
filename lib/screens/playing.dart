import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicplayer/screens/list.dart';

class Playing extends StatefulWidget {
  Playing({Key key}) : super(key: key);

  @override
  _PlayingState createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            child: Neumorphic(
              style: NeumorphicStyle(),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        NeumorphicButton(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            lightSource: LightSource.topLeft,
                          ),
                          boxShape: NeumorphicBoxShape.circle(),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "PLAYING NOW",
                          style: TextStyle(color: Colors.black),
                        ),
                        NeumorphicButton(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            lightSource: LightSource.topLeft,
                          ),
                          boxShape: NeumorphicBoxShape.circle(),
                          child: GestureDetector(
                            onTap: () {
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListScreen() ),
            );
                            },
                            child: Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                  Neumorphic(
                    boxShape: NeumorphicBoxShape.circle(),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        border: NeumorphicBorder(
                          isEnabled:true,
                          width:10,
                          color: Colors.transparent
                        ),
                        ),
                    child: Image.network(
                      'https://images.genius.com/ccad3405e3a136e1b60d8939e581c7b4.1000x1000x1.jpg',
                      height: 350,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Lost it',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Flume ft Vic Mensa',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Text('1:21'), Text('3:46')],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 5, left: 15.0, right: 15.0),
                    child: NeumorphicSlider(
                      style: SliderStyle(
                        depth: 5,
                        variant:Color.fromRGBO(134, 168, 243, 1),
                        accent: Color.fromRGBO(134, 168, 243, 0.5),
                        thumbBorder: NeumorphicBorder(width:7,color: Colors.white)
                      ),
                      height: 10,
                      value: 10,
                      min: 0,
                      max: 20,
                      onChanged: (value) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        NeumorphicButton(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            lightSource: LightSource.topLeft,
                          ),
                          boxShape: NeumorphicBoxShape.circle(),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.fast_rewind),
                          ),
                        ),
                        NeumorphicButton(
                          style: NeumorphicStyle(
                              lightSource: LightSource.topLeft,
                              shape: NeumorphicShape.convex,
                              color: Color.fromRGBO(134, 168, 243, 0.5)),
                          boxShape: NeumorphicBoxShape.circle(),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.pause),
                          ),
                        ),
                        NeumorphicButton(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.convex,
                              lightSource: LightSource.topLeft),
                          boxShape: NeumorphicBoxShape.circle(),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.fast_forward),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
