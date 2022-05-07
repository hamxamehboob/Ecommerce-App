import 'package:ecommerce_app/Screens/loginScreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1)).then((value) =>
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const login())));
  }
  Widget build(BuildContext context) {

    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Pic1.png"),
                fit: BoxFit.cover)
                ),
      ),
         Scaffold(
           resizeToAvoidBottomInset: false,
           backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 111, top: 96, right: 110, )),
              const Text("Welcome to",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      letterSpacing: 0.03,
                      fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
              const SizedBox(height: 1),
              Container(
                height: 35,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Pic2.png'))),
              ),
              const SizedBox(height: 17),
              Container(
                padding: EdgeInsets.only(right: 47, left: 47),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                    style: TextStyle(
                        color: Color(0xFF868889),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        letterSpacing: 0.03),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 557,
              ),
              const Text(
                "POWERED BY",
                style: TextStyle(
                    color: Color(0xFF868889),
                    fontSize: 15,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "TECH IDARA",
                style: TextStyle(
                    color: Color(0xFF6CC51D),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 3),
              ),
            ],
          ),
         )
    ],
        );
  }
}
