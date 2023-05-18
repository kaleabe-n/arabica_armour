import 'package:flutter/material.dart';

AppBar getAppBar() {
  return AppBar(
    toolbarHeight: 60,
    backgroundColor: Colors.white,
    elevation: 0,
    // leading: const Padding(
    //   padding: EdgeInsets.fromLTRB(6, 1, 0, 0),
    //   child: Image(image: AssetImage('assets/leaflogo.png')),
    // ),
    title: const Text(
      "Arebica Armour",
      style: TextStyle(
        color: Color.fromRGBO(1, 155, 113, 1),
        fontFamily: 'times new roman',
        letterSpacing: 1,
        fontSize: 27,
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.settings_outlined,
          color: Colors.black,
        ),
      )
    ],
  );
}
