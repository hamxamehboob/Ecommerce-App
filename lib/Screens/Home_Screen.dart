import 'dart:convert';
import 'package:ecommerce_app/Screens/Cart_Screen.dart';
import 'package:ecommerce_app/Widgets/Categories_Cart.dart';
import 'package:flutter/cupertino.dart';
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
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF6CC51D),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopCart()));
        },
        child: Icon(Icons.add_shopping_cart_outlined),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17, right: 17),
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 17),
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
                  SizedBox(width: itemWidth),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF868889),
                  ),
                ],
              ),
              Container(
                  height: itemHeight/3,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (_, index) => SizedBox(
                            width: itemWidth/21,
                          ),
                      itemBuilder: (_, index) => Image.asset('assets/images/peach.png'))),
              SizedBox(height: itemHeight/10,),
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
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF868889),
                      )),
                ],
              ),
              GridView.count(
                physics: ScrollPhysics(),
                childAspectRatio: itemHeight / 500,
                crossAxisCount: 2,
                crossAxisSpacing: itemWidth/itemHeight,
                shrinkWrap: true,
                children: [
                  Cart(),Cart(),
                  Cart(),Cart(),
                  Cart(),Cart(),
                  Cart(),Cart(),



                ],
              )
            ],
          ),
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
      var responseJSON =
          AllCategoriesResponse.fromJson(jsonDecode(response.body));

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
