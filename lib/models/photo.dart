class Picture {
  final int albumId;
  final int id;
  final String title;
  final String url;

  Picture({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
  });

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
    );
  }
}
