import 'package:ecommerce_app/Screens/SplashScreen.dart';
import 'package:ecommerce_app/Widgets/AppButton.dart';
import 'package:flutter/material.dart';

import 'ShippingInfo.dart';

class info extends StatelessWidget {
  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
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
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
            padding:  EdgeInsets.only(bottom: bottom,
              top: 42,
              left: 17,
              right: 17,
            ),
            child: Container(
                child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                      hintText: "Name",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/profile_icon.png"),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                      hintText: "Email address",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Image.asset("assets/images/email_icon.png"),
                      ),
                      hintStyle:
                          const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                      hintText: "Phone number",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/phone_icon.png"),
                      ),
                      hintStyle:
                          const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                      hintText: "Address",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset("assets/images/address_icon.png"),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 17),
                      hintText: "Zip Code",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Image.asset("assets/images/zipcode_icon.png"),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                      hintText: "City",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/city_icon.png"),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17),
                      hintText: "Country",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/country_icon.png"),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 120),
              AppButton(
                  label: "Next",
                  onPress: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => (shipInfo())));
                  }),
            ]))),
      ),
    );
  }
}
