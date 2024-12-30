class OfVideos {
  String? id;
  String? image;
  String? title;
  String? url;
  String? thumbImage;

  OfVideos({this.id, this.image, this.title, this.url, this.thumbImage});

  OfVideos.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    title = json["title"];
    url = json["url"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["image"] = image;
    _data["title"] = title;
    _data["url"] = url;
    _data["thumb_image"] = thumbImage;
    return _data;
  }

  static List<OfVideos> vid(List value) {
    return value.map((e) => OfVideos.fromJson(e)).toList();
  }
}
