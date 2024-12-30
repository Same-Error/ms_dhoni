class OfSelfie {
  String? id;
  String? thumbnailImage;
  String? realImage;

  OfSelfie({this.id, this.thumbnailImage, this.realImage});

  OfSelfie.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    thumbnailImage = json["thumbnail_image"];
    realImage = json["real_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["thumbnail_image"] = thumbnailImage;
    data["real_image"] = realImage;
    return data;
  }

  static List<OfSelfie> self(List value) {
    return value.map((e) => OfSelfie.fromJson(e)).toList();
  }
}
