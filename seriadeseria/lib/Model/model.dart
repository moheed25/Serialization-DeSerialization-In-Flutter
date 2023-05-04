import 'dart:html';

class UserModel {
  late String id;
  late String fullname;
  late String email;

  UserModel({required this.email, required this.fullname, required this.id});

  // Map to Object :
  UserModel.fromMap(Map<String, dynamic> map) {
    this.email = map["id"];
    this.fullname = map["fullname"];
    this.id = map["id"];
  }

  // Object to Map :

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "fullname": this.fullname,
      "email": this.email,
    };
  }
}
