class ImageModel {
  int id;
  String imageURL;
  String title;

  ImageModel(this.id, this.imageURL, this.title);
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    imageURL = parsedJson['url'];
    title = parsedJson['title'];
  }
}
