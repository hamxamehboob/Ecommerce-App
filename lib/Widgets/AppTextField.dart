import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeholder;
  final String icon;

  AppTextField({required this.placeholder,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white,),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize: 15),
        decoration: InputDecoration(
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
            border: InputBorder.none),
      ),
    );
  }
}