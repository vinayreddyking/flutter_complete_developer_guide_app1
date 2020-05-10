import 'dart:convert';

import 'package:completedeveloperguideapp1/src/models/image_model.dart';
import 'package:completedeveloperguideapp1/src/widgets/images_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  List<ImageModel> _images = [];
  void fetchImage() async {
    _counter++;
    var response = await get(
        'https://jsonplaceholder.typicode.com/photos/' + _counter.toString());
    ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      _images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s See Some Images!'),
        ),
        body: ImagesList(_images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
