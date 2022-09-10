import 'package:flutter/material.dart';

import '../Screens/Cart_Screen.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 160,
          color: Colors.white,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 120, top: 10),
                  child: Image.asset("assets/images/heart_icon.png"),
                ),
              ),
              CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFFFFCEC1),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Image.asset("assets/images/peach.png"),
                  )),
              SizedBox(
                height: 8,
              ),
              Text(
                'Rs.8.00',
                style: TextStyle(
                    color: Color(0xFF6CC51D),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Fresh Peach',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'dozen',
                style: TextStyle(
                    color: Color(0xFF868889),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),

            ],

          ),
        ),
        SizedBox(height: 2,),
        Padding(
          padding: const EdgeInsets.only(left:10,right: 10),
          child: Container(height: 26,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart,color: Colors.green,size: 20,),
                  SizedBox(width: 9,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopCart()));
                    },
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
