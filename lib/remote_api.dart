import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RemoteApi extends StatefulWidget {
  @override
  _RemoteApiState createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {
  List data = [];
  List<String> imgUrl = [];
  bool showimg = false;

  getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/?client_id=53MbMXPU_-UeVIminZJWN6vIqUe37RvZ89SsXXT73cM'));
    data = json.decode(response.body);
    _assign();
    showimg = true;
  }

  _assign() {
    for (var i = 0; i < data.length; i++) {
      imgUrl.add(data.elementAt(i)['urls']['small']);
      debugPrint(imgUrl.elementAt(i));
    }
  }
  @override
  void initState() { 
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imgUrl.length,
        itemBuilder: (context, index) {
          return Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  height: 210,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Card(
                      child: !showimg
                          ? CircularProgressIndicator()
                          : Image(image: NetworkImage(imgUrl.elementAt(index)),fit: BoxFit.fill,),
                    ),
                  ),
                )
              ]);
        });
  }
}
 

/*class RemoteApi {
  List data = [];
  List<String> imgUrl = [];
  bool showimg = false;
  
  getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/?client_id=53MbMXPU_-UeVIminZJWN6vIqUe37RvZ89SsXXT73cM'));
    data = json.decode(response.body);
    _assign();
    showimg = true;
    
  }

  _assign() {
    for(var i = 0;i<data.length; i++) {
      imgUrl.add(data.elementAt(i)['urls']['small']);
      debugPrint(imgUrl.elementAt(i));
    }
  }
} */
