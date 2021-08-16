import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text('Explore Cities',
                                style: TextStyle(
                                    letterSpacing: 0,
                                    wordSpacing: 0,
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Segoe UI')),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(Icons.menu),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                prefixIcon: Icon(Icons.search_sharp),
                                suffixIcon: Icon(Icons.mic),
                                fillColor: Colors.grey[100],
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Text('Popular Cities',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: Text('View All',
                                  style: TextStyle(color: Colors.grey)),
                            )
                          ],
                        ),
                        Flexible(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 210,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      child: Card(
                                        child: Image.network(
                                          'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('New York',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 210,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      child: Card(
                                        child: Image.network(
                                          'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('New York',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 210,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      child: Card(
                                        child: Image.network(
                                          'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('New York',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 210,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      child: Card(
                                        child: Image.network(
                                          'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('New York',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              child: Flexible(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 10),
                          child: Text('Trending Places',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 100,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      child: Container(
                                        //padding: EdgeInsets.only(bottom: 20),
                                        child: Card(
                                          //margin: EdgeInsets.only(
                                          //    bottom: 30, left: 25),
                                          child: Image.network(
                                              'https://static.daktilo.com/sites/496/uploads/2021/06/02/large/emma-stone-beautiful-12.jpg',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 100,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      child: Container(
                                        //padding: EdgeInsets.only(bottom: 20),
                                        child: Card(
                                          //margin: EdgeInsets.only(
                                          //    bottom: 30, left: 25),
                                          child: Image.network(
                                              'https://static.daktilo.com/sites/496/uploads/2021/06/02/large/emma-stone-beautiful-12.jpg',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 100,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      child: Container(
                                        //padding: EdgeInsets.only(bottom: 20),
                                        child: Card(
                                          //margin: EdgeInsets.only(
                                          //    bottom: 30, left: 25),
                                          child: Image.network(
                                              'https://static.daktilo.com/sites/496/uploads/2021/06/02/large/emma-stone-beautiful-12.jpg',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              child: Flexible(
                  flex: 1,
                  child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 25),
                                child: Text('Travel with Friends',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(left: 25),
                                children: [
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                  SizedBox(
                                    child: ClipRRect(
                                        child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg',
                                          scale: 1),
                                      minRadius: 30,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ]))),
            )
          ],
        )));
  }
}
