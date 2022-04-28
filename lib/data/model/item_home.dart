class ItemHome {
  final int id;
  final String urlImage, name, description;

  const ItemHome({this.id, this.urlImage, this.name, this.description});

  factory ItemHome.fromJson(Map<String, dynamic> json) {
    return ItemHome(
        id: json['id'] as int,
        urlImage: json['urlImage'] as String,
        name: json['name'] as String,
        description: json['description'] as String);
  }
}
