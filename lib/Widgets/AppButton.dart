import 'dart:ui';

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;
  const AppButton({required this.label,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onPress,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(begin:Alignment.centerLeft,end: Alignment.centerRight, colors: [Color(0xFFAEDC81),Color(0xFF6CC51D)])
              ),
              child: Text(label,
                  style: const TextStyle(
                      color: Colors.white ,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}