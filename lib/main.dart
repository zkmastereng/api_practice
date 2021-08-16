import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //width: double.infinity,
          //height: 200,
          child: Flexible(
            flex: 2,
            child: Container(
              width: double.infinity,
              
              color: Colors.purple,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left:25),
                    child: Text('Explore Cities',
                        style: TextStyle(
                          letterSpacing: 0,
                          wordSpacing: 0,
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Segoe UI')),
                  ),
                  SizedBox(height: 10,),
                  Container(height:50,margin:EdgeInsets.only(left:25,right: 25),child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search_sharp),suffixIcon: Icon(Icons.mic),fillColor: Colors.white,border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),),)
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Flexible(
              flex: 3,
              child: Container(
                color: Colors.red,
              )),
        ),
        Container(
          child: Flexible(
              flex: 2,
              child: Container(
                color: Colors.black,
              )),
        ),
        Container(
          child: Flexible(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              )),
        )
      ],
    )));
  }
}
