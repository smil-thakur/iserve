import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/pizza.dart';

bool pizza = false;

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  void initState() {
    super.initState();
    if (count1 != 0 ||
        count2 != 0 ||
        count3 != 0 ||
        count4 != 0 ||
        count5 != 0 ||
        count6 != 0) {
      pizza = true;
    }
    print(pizza);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: GoogleFonts.barlow(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                child: pizza == true && index == 0
                    ? Text(
                        "Pizza",
                        style: GoogleFonts.openSans(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : Text("lol"),
              ),
            );
          }),
    );
  }
}
