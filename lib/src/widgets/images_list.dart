import 'package:completedeveloperguideapp1/src/models/image_model.dart';
import 'package:flutter/material.dart';

class ImagesList extends StatelessWidget {
  final List<ImageModel> images;
  ImagesList(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return buildImages(images[i]);
      },
      itemCount: images.length,
    );
  }

  Widget buildImages(ImageModel image) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.imageURL),
          ),
          Text('${image.title}'),
        ],
      ),
    );
  }
}
