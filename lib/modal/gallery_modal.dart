class OfWallpapers {
  String? id;
  String? image;
  String? thumbImage;

  OfWallpapers({this.id, this.image, this.thumbImage});

  OfWallpapers.fromJson(Map<String, dynamic> json) {
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

  static List<OfWallpapers> walls(List value) {
    return value.map((e) => OfWallpapers.fromJson(e)).toList();
  }
}
