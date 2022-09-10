import 'dart:convert';

import 'package:ecommerce_app/Models/All_Categories.dart';
import 'package:ecommerce_app/Models/loginResponse.dart';
import 'package:ecommerce_app/Screens/Home_Screen.dart';
import 'package:ecommerce_app/Screens/SignupScreen.dart';
import 'package:ecommerce_app/Screens/SplashScreen.dart';
import 'package:ecommerce_app/Widgets/AppButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObscure = true;
  bool _switchValue = true;
  LoginData? loginData;
  List<AllCategoriesData>? categories;

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  bool isloading = false;
  String? error;

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF4F5F9),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => Splash())),
          ),
          centerTitle: true,
          title: Text(
            'Welcome',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: !isloading
            ? SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: EdgeInsets.only(bottom: bottom),
                  child: Column(children: [
                    if (error != null) Text("There was an error : $error"),
                    if (loginData == null) ...[
                      Container(
                        child: Image.asset("assets/images/Login_image.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 30, left: 16, right: 184),
                        child: const Text(
                          "Welcome back !",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              letterSpacing: 0.03),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 200),
                        child: const Text(
                          "Sign in to your account",
                          style: TextStyle(
                              color: Color(0xFF868889),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              letterSpacing: 0.03),
                        ),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.only(left: 17, right: 17),
                            child: Column(children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  controller: usernamecontroller,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 17),
                                      hintText: "Email address",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Image.asset(
                                            "assets/images/email_icon.png"),
                                      ),
                                      hintStyle: const TextStyle(
                                          color: Color(0xFF868889),
                                          fontSize: 15),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                padding: EdgeInsets.only(left: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  controller: Passwordcontroller,
                                  obscureText: _isObscure,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  decoration: InputDecoration(
                                      iconColor: Color(0xFF868889),
                                      suffixIcon: IconButton(
                                          icon: Icon(
                                            _isObscure
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          }),
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 15),
                                      hintText: "Enter a Password",
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Image.asset(
                                            "assets/images/pass_icon.png"),
                                      ),
                                      hintStyle: const TextStyle(
                                          color: Color(0xFF868889),
                                          fontSize: 15),
                                      border: InputBorder.none),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Transform.scale(
                                          scale: 0.7,
                                          child: CupertinoSwitch(
                                              value: _switchValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _switchValue = value;
                                                });
                                              }),
                                        ),
                                        const Expanded(
                                          child: Text(
                                            "Remember me",
                                            style: TextStyle(
                                                color: Color(0xFF868889),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        const Text(
                                          "Forgot password",
                                          style: TextStyle(
                                              color: Color(0xFF407EC7),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.03),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 17,
                              ),
                              GestureDetector(
                                onTap: onlogin,
                                child:
                                    AppButton(label: "Login", onPress: () {}),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don’t have an account ?",
                                    style: TextStyle(
                                        color: Color(0xFF868889),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.03),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => Signup()));
                                    },
                                    child: Text(
                                      " Sign Up",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.03),
                                    ),
                                  )
                                ],
                              )
                            ])),
                      )
                    ],
                    // if(loginData !=null ) Text(loginData?.accessToken?? "")
                  ]),
                ),
              )
            : Center(child: CircularProgressIndicator()));
  }

  void onlogin() async {
    GestureDetector(
      onTap: (){
       Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
      }
    );
    var url = Uri.parse('http://ishaqhassan.com:2000/user/signin');
    setState(() {
      isloading = true;
    });
    try {
      var response = await http.post(url, body: {
        'email': usernamecontroller.text,
        'password': Passwordcontroller.text
      });
      var responseJSON = LoginResponse.fromJson(jsonDecode(response.body));
      if(response.statusCode == 200){

        print("Account Created Succesfully");

        // print(categories![1].title ?? "".toString());
        setState((){
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) =>HomeScreen()), (route) => false);
        });
      }
      else
        {
          print("FAiled");
        }
      setState(() {
        loginData = responseJSON.data;
      });
      await getAllCategories();

    } catch (e) {
      error = e.toString();
    }
    setState(() {
      isloading = false;
    });
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
        print(categories![1].title.toString() );
      });
    } catch (e) {
      error = e.toString();
    }
    setState(() {
      isloading = false;
    });
  }


}
