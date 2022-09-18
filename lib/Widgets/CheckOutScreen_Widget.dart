import 'package:flutter/material.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17),
      child: Container(

        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 22,
            ),
            Expanded(
              child: TextField(
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: label,hintStyle: TextStyle(
                    color: Color(0xFF868889),fontSize: 15
                  )
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
