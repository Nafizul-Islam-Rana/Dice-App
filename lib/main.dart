import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);


  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  int northDiceNumber=2;
  int southDiceNumber=4;
  void changeDicefaceL(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;;
    });
  }
  void changeDicefaceR(){
    setState(() {
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  void changeDicefaceN(){
    setState(() {
      northDiceNumber=Random().nextInt(6)+1;
    });
  }
  void changeDicefaceS(){
    setState(() {
      southDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),

        body: Center(
          child: Column(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDicefaceL();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDicefaceR();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),

            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDicefaceN();
                },
                child: Image(
                  image: AssetImage('images/dice$northDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDicefaceS();
                },
                child: Image(
                  image: AssetImage('images/dice$southDiceNumber.png'),
                ),
              ),
            ),

          ],
         ),
         ),


    );
  }
}
