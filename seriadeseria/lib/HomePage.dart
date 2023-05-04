import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:seriadeseria/Model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Object :
  UserModel userObject = new UserModel(
      email: "moheed12@gmail.com", fullname: "Moheed Aziz", id: "08323");

  //  JSON :
  String userJSON =
      '{"id" :"08323", "email": "moheed12@gmail.com" ,"fullname" : "Moheed Aziz" }';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Serialization :
                  Map<String, dynamic> userMap = userObject.toMap();
                  var json = jsonEncode(userMap);
                  print(json.toString());
                },
                child: Text("Serialization")),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
// De-Serialization :

                  var decoded = jsonDecode(userJSON);
                  Map<String, dynamic> userMap = decoded;

                  UserModel newUser = new UserModel.fromMap(userMap);
                  print(newUser.toString());
                },
                child: Text("De-Serialization")),
          ],
        ),
      )),
    );
  }
}
