class OfAuto {
  String? id;
  String? image;
  String? title;
  String? thumbImage;

  OfAuto({this.id, this.image, this.title, this.thumbImage});

  OfAuto.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    title = json["title"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["image"] = image;
    data["title"] = title;
    data["thumb_image"] = thumbImage;
    return data;
  }

  static List<OfAuto> autoss(List value) {
    return value.map((e) => OfAuto.fromJson(e)).toList();
  }
}
