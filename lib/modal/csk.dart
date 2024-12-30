class OfCsk {
  String? id;
  String? image;
  String? thumbImage;

  OfCsk({this.id, this.image, this.thumbImage});

  OfCsk.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["image"] = image;
    data["thumb_image"] = thumbImage;
    return data;
  }

  static List<OfCsk> chennai(List value) {
    return value.map((e) => OfCsk.fromJson(e)).toList();
  }
}
