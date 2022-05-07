import 'package:ecommerce_app/Screens/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppButton.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
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
                .push(MaterialPageRoute(builder: (_) => login())),
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
        body: Column(children: [
          Container(
            child: Image.asset("assets/images/SignUp_image.png"),
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 184),
            child: const Text(
              "Create account",
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
              "Quickly create account",
              style: TextStyle(
                  color: Color(0xFF868889),
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  letterSpacing: 0.03,
                  fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
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
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 17),
                        hintText: "Email address",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset("assets/images/email_icon.png"),
                        ),
                        hintStyle: const TextStyle(
                            color: Color(0xFF868889),
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 2),
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
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset("assets/images/phone_icon.png"),
                        ),
                        hintStyle: const TextStyle(
                            color: Color(0xFF8F8F9E),
                            fontSize: 15,
                            fontFamily: 'Poppins'),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                    child: Column(children: [
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
                      obscureText: _isObscure,
                      style: TextStyle(color: Colors.black, fontSize: 15),
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
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          hintText: "Enter a Password",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Image.asset("assets/images/pass_icon.png"),
                          ),
                          hintStyle: const TextStyle(
                              color: Color(0xFF868889), fontSize: 15),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  AppButton(
                    label: "Signup",
                    onPress: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => (login())));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                            color: Color(0xFF868889),
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.03),
                      ),
                      Text(
                        " Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.03),
                      )
                    ],
                  )
                ]))
              ]))
        ]));
  }
}

