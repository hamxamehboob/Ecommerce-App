import 'package:ecommerce_app/Screens/InformationScreen.dart';
import 'package:ecommerce_app/Screens/ShippingInfo.dart';
import 'package:ecommerce_app/Widgets/AppButton.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 22,left: 17,right: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Subtotal",
                  style: TextStyle(
                  color: Color(0xFF868889),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 280,),
                Text(
                  "\$56.7",
                  style: TextStyle(
                      color: Color(0xFF868889),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),


              ],

            ),
        SizedBox(height:7 ,),
        Row(
          children: [
            Text(
              "Shipping charges",
              style: TextStyle(
                  color: Color(0xFF868889),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),),
            SizedBox(width: 232,),
            Text(
              "\$1.6",
              style: TextStyle(
                  color: Color(0xFF868889),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
            SizedBox(height: 20,),
            Divider(thickness: 2,color: Color(0xFFEBEBEB),),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 270,),
                Text(
                  "\$58.2",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10,),
            AppButton(label: "Checkout", onPress: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => info()));
            })
          ],
        ),
      ),
    );
  }
}
