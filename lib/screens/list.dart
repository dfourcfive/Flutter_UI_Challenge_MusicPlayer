import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<ListScreen> {
  int current_playing=1;
  
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
statusBarColor: Colors.transparent,
),

          child: Scaffold(
            bottomNavigationBar: Opacity(opacity: 0.3),
        body: SafeArea(
                child: Container(
              child: Neumorphic(
                style: NeumorphicStyle(),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Text('Skin',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)
                                              ),
                          ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:8.0),
                                              child: Text('Flume',
                                        style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)
                                              ),
                                            ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        
                        NeumorphicButton(
                          style: NeumorphicStyle(
                                                        lightSource: LightSource.topLeft,
                            shape: NeumorphicShape.convex
                          ),
                          boxShape: NeumorphicBoxShape.circle(),
                          child:Icon(
                            Icons.favorite,
                            color:Colors.grey,
                            size: 25,
                          )
                        ),Neumorphic(
                          drawSurfaceAboveChild: true,
                    boxShape: NeumorphicBoxShape.circle(),
                    style: NeumorphicStyle(
                        lightSource: LightSource.topLeft,
                        shape: NeumorphicShape.flat,
                        depth: 8,
                        color: Colors.grey,
                        border: NeumorphicBorder(
                          width:5,
                        )),
                    child: Image.network(
                      'https://images.genius.com/ccad3405e3a136e1b60d8939e581c7b4.1000x1000x1.jpg',
                      height: 200,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                        NeumorphicButton(
                          boxShape: NeumorphicBoxShape.circle(),
                          style: NeumorphicStyle(
                            lightSource: LightSource.topLeft,
                            shape: NeumorphicShape.convex
                          ),
                          child:Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                            size: 30,
                          )
                        ),
                      ],
                    ),
                    Expanded(
                         child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Neumorphic(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(left:10.0),
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)
                            ),
                            style: NeumorphicStyle(
                              depth: -5,
                              color:index==current_playing? Color.fromRGBO(134, 168, 243, 0.2):Colors.transparent,         
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text('Song Title',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)
                                              ),
                                    ),
                                    Text('Artist',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                ),
                                FittedBox(
                                  fit: BoxFit.fill,
                                  child: NeumorphicButton(
                                    minDistance: 5.0,
                                    margin: EdgeInsets.all(8.0),
                                  style: NeumorphicStyle(
                                    color:index==current_playing? Color.fromRGBO(134, 168, 243, 0.5) :const Color(0xCCDEFA),
                                  lightSource: LightSource.topLeft,
                                    shape: NeumorphicShape.convex),
                                  boxShape: NeumorphicBoxShape.circle(),
                                  child: IconButton(
                                    iconSize: 30,
                                    icon: Icon(
                                      index==current_playing?
                                      Icons.pause : Icons.play_arrow,                               
                                      color:index==current_playing?Colors.grey:Colors.black,
                                  ),
                              ),)
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
