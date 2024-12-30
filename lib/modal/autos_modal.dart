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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["image"] = image;
    _data["title"] = title;
    _data["thumb_image"] = thumbImage;
    return _data;
  }

  static List<OfAuto> autoss(List value) {
    return value.map((e) => OfAuto.fromJson(e)).toList();
  }
}
