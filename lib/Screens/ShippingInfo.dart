import 'package:ecommerce_app/Screens/InformationScreen.dart';
import 'package:ecommerce_app/Screens/SplashScreen.dart';
import 'package:ecommerce_app/Widgets/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class shipInfo extends StatelessWidget {
  const shipInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 250,left: 17,right: 17),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                SizedBox(
                  height: 250,
                  width: 200,
                  child: Image(
                    image: AssetImage("assets/images/delivery.png"),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                AppButton(label: "Go to home",onPress: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> (Splash())));
                }),
              ])),
        ));
  }
}
