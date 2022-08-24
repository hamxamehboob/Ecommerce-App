import 'dart:convert';

import 'package:ecommerce_app/Screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../APIS/All_Categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<AllCategoriesData>? categories;
  bool isLoading = false;
  String? error;

  final String url = "http://ishaqhassan.com:2000/product";

  CallApi() async {
    var uri = Uri.parse(url);
    try {
      var response = await http.get(uri);
      var ResponseSTR = response.body;
      setState(() {
       var categories = AllCategoriesResponse.fromJson(jsonDecode(response.body) as Map<String,dynamic>);

      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
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
                  padding: const EdgeInsets.only(left: 200),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF868889),
                    ),
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => const login())),
                  ),
                ),
              ],
            ),
            if(categories!=null)
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: categories!.length,
                  itemBuilder: (_, index) => ListTile(
                        title: Text(categories![index].title ?? ""),
                    leading: Image.network(categories![index].icon ?? ""),
                      )),
            ),
            const SizedBox(height: 32),
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
                  padding: const EdgeInsets.only(left: 150),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF868889),
                    ),
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => const login())),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
