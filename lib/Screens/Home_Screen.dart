import 'dart:convert';

import 'package:ecommerce_app/Screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import '../Models/All_Categories.dart';
import '../Models/loginResponse.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<AllCategoriesData>? categories;
  String? error;
  bool isloading = false;
  LoginData? loginData;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF6CC51D), onPressed: () {  },
        child: Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 17, right: 17),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 51,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF4F5F9),
                    border: Border.all(color: const Color(0xFFF4F5F9)),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 17),
                      hintText: "Search keywords..",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Image.asset("assets/images/Search_icon.png"),
                      ),
                      hintStyle: const TextStyle(
                          color: Color(0xFF8F8F9E),
                          fontSize: 15,
                          fontFamily: 'Poppins'),
                      border: InputBorder.none),
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset("assets/images/HomeScreen_img.png"),
                const Positioned(
                    left: 44,
                    top: 151,
                    child: Text(
                      "20% off on your \nfirst purchase",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: Icon(Icons.arrow_forward,color: Color(0xFF868889),)
                ),
              ],
            ),
            SizedBox(height: 127,),
            if(categories!=null)
            Expanded(
              child: ListView.builder(itemBuilder:(_,index) =>  ListTile(
                title: Text(categories![index].title ?? ""),
                leading: Image.network(categories![index].icon ?? ""),
              ) ,itemCount: categories!.length,)
            ),
              SizedBox(),
            Row(
              children: [
                const Text(
                  "Featured products",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Icon(Icons.arrow_forward,color: Color(0xFF868889),)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> getAllCategories() async {
    var url = Uri.parse('http://ishaqhassan.com:2000/category');
    setState(() {
      isloading = true;
    });
    try {
      var response = await http.get(url,
          headers: {"Authorization": "Bearer ${loginData?.accessToken}"});
      var responseJSON = AllCategoriesResponse.fromJson(jsonDecode(response.body));
      setState(() {
        categories = responseJSON.data;
      });
    } catch (e) {
      error = e.toString();
    }
    setState(() {
      isloading = false;
    });
  }
}
