class OfQuotes {
  String? id;
  String? image;
  String? thumbImage;

  OfQuotes({this.id, this.image, this.thumbImage});

  OfQuotes.fromJson(Map<String, dynamic> json) {
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

  static List<OfQuotes> quot(List value) {
    return value.map((e) => OfQuotes.fromJson(e)).toList();
  }
}
