import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int itemcount = 0;

  void incrementCount() {
    setState(() {
      itemcount++;
    });
  }

  void decrementCount() {
    setState(() {
      itemcount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
        endActionPane: ActionPane(
          motion: BehindMotion(),
          children: [
            SlidableAction(

              icon: Icons.delete_outline_sharp,
              backgroundColor: Colors.red,
              onPressed: (context) => {},
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17, top: 26),
          child: Container(
            color: Colors.white,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFD2FFD0),
                    radius: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset('assets/images/peach.png'),
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$2.22 x 4",
                            style: TextStyle(
                                color: Color(0xFF6CC51D),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Fresh Broccol",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text("1.50 lbs",
                              style: TextStyle(
                                  color: Color(0xFF868889),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400))
                        ]),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: incrementCount,
                            child: Icon(
                              Icons.add,
                              color: Colors.green,
                            )),
                        Text(
                          "${itemcount}",
                          style: TextStyle(
                              color: Color(0xFF868889),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        GestureDetector(
                            onTap: decrementCount,
                            child: Icon(
                              Icons.remove,
                              color: Colors.green,
                            )),
                      ])
                ],
              ),
            ),
          ),
        ));
  }
}
