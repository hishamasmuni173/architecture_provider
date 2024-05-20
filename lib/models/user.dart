class User {
  int id;
  String name;
  String avatar;

  User({required this.id, required this.name, required this.avatar});
  User.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name'], avatar: json['avatar']);
}