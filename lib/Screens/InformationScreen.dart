import 'package:ecommerce_app/Screens/SplashScreen.dart';
import 'package:ecommerce_app/Widgets/AppButton.dart';
import 'package:ecommerce_app/Widgets/CheckOutScreen_Widget.dart';
import 'package:flutter/material.dart';

import 'ShippingInfo.dart';

class info extends StatelessWidget {
  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size,height,width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF4F5F9),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 23,
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.03,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 42,),
          CheckoutWidget(label: "Name", icon: Icons.account_circle),
          CheckoutWidget(label: "Email address", icon: Icons.email),
          CheckoutWidget(label: "Phone number", icon: Icons.phone),
          CheckoutWidget(label: "Address", icon: Icons.home),
          CheckoutWidget(label: "Zip code", icon: Icons.local_post_office),
          CheckoutWidget(label: "City", icon: Icons.location_city_outlined),
          CheckoutWidget(label: "Country", icon: Icons.flag),
          SizedBox(height: height/6,),
          Padding(
            padding: const EdgeInsets.only(left: 17,right: 17),
            child: AppButton(label: "Next", onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => shipInfo()));
            }),
          )
        ],

      )
    );
  }
}
