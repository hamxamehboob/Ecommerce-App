import 'package:ecommerce_app/Widgets/Shopping%20Cart%20Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: Text(
          "Shopping Cart",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF4F5F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
                itemBuilder: (_, index) => CartWidget(),
                separatorBuilder: (_, index) => SizedBox(),
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
