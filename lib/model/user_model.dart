import 'dart:convert';

UserModel userModelFromMap(String str) => UserModel.fromMap(json.decode(str));

String userModelToMap(UserModel data) => json.encode(data.toMap());

class UserModel {
  UserModel({
    required this.name,
    required this.surname,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.id,
  });

  final String name;
  final String surname;
  final String email;
  final String phone;
  final String avatar;
  final String id;

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        phone: json["phone"],
        avatar: json["avatar"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "surname": surname,
        "email": email,
        "phone": phone,
        "avatar": avatar,
        "id": id,
      };
}
