class CharacterModel {
  int id;
  String name;
  String image;

  CharacterModel({required this.id, required this.name, required this.image});

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
