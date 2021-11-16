import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/list.dart';
import 'package:iserve/routes.dart';

var price = <int>[];
var pizza = <String>[];
var ma = 0;
var ppa = 0;
var dv = 0;
var mp = 0;
var ip = 0;
var vp = 0;
var sum = 0;
var count1 = 0;
var count2 = 0;
var count3 = 0;
var count4 = 0;
var count5 = 0;
var count6 = 0;

class PizzaPage extends StatefulWidget {
  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Pizza",
          style: GoogleFonts.robotoSlab(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Image.asset("assets/images/pbg.png"),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Margherita",
                            style: GoogleFonts.robotoSlab(fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " X $count1",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 15, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count1 != 0) {
                                  price.remove(110);

                                  sum = sum - 110;
                                  count1--;
                                  ma = count1;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text("Rs. 110",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                              )),
                          InkWell(
                            onTap: () {
                              price.add(110);
                              if (count1 == 0) {
                                pizza.add("Margherita");
                              }
                              setState(() {
                                sum = 0;
                                for (var i = 0; i < price.length; i++) {
                                  sum += price[i];
                                }
                                count1++;
                                ma = count1;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Peppy Paneer",
                            style: GoogleFonts.robotoSlab(fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " X $count2",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 15, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count2 != 0) {
                                  price.remove(190);
                                  sum = sum - 190;
                                  count2--;
                                  ppa = count2;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text("Rs. 190",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                              )),
                          InkWell(
                            onTap: () {
                              price.add(190);
                              setState(() {
                                sum = 0;
                                if (count2 == 0) {
                                  pizza.add("Peppy Paneer");
                                }
                                for (var i = 0; i < price.length; i++) {
                                  sum += price[i];
                                }
                                count2++;
                                ppa = count2;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Deluxe Veggie",
                            style: GoogleFonts.robotoSlab(fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " X $count3",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 15, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count3 != 0) {
                                  price.remove(210);
                                  sum = sum - 210;
                                  count3--;
                                  dv = count3;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text("Rs. 210",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                              )),
                          InkWell(
                            onTap: () {
                              price.add(210);
                              if (count3 == 0) {
                                pizza.add("Deluxe Veggie");
                              }
                              setState(() {
                                sum = 0;
                                for (var i = 0; i < price.length; i++) {
                                  sum += price[i];
                                }
                                count3++;
                                dv = count3;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Maxican Pizaa",
                            style: GoogleFonts.robotoSlab(fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " X $count4",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 15, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count4 != 0) {
                                  price.remove(260);
                                  sum = sum - 260;
                                  count4--;
                                  mp = count4;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text("Rs. 260",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                              )),
                          InkWell(
                            onTap: () {
                              price.add(260);
                              if (count4 == 0) {
                                pizza.add("Maxican Pizza");
                              }
                              setState(() {
                                sum = 0;
                                for (var i = 0; i < price.length; i++) {
                                  sum += price[i];
                                }
                                count4++;
                                mp = count4;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Italian Pizza",
                            style: GoogleFonts.robotoSlab(fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " X $count5",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 15, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count5 != 0) {
                                  price.remove(310);
                                  sum = sum - 310;
                                  count5--;
                                  ip = count5;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text("Rs. 310",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                              )),
                          InkWell(
                            onTap: () {
                              if (count5 == 0) {
                                pizza.add("Italian Pizza");
                              }
                              price.add(310);
                              setState(() {
                                sum = 0;
                                for (var i = 0; i < price.length; i++) {
                                  sum += price[i];
                                }
                                count5++;
                                ip = count5;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Veggie Paradise",
                            style: GoogleFonts.robotoSlab(fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              " X $count6",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 15, color: Colors.red),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count6 != 0) {
                                  price.remove(360);
                                  sum = sum - 360;
                                  count6--;
                                  vp = count6;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text("Rs. 360",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                              )),
                          InkWell(
                            onTap: () {
                              price.add(360);
                              if (count6 == 0) {
                                pizza.add("Veggie Paradise");
                              }
                              setState(() {
                                sum = 0;
                                for (var i = 0; i < price.length; i++) {
                                  sum += price[i];
                                }
                                count6++;
                                vp = count6;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, Myroutes.special);
                },
                child: Container(
                  //color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Text(
                      "Total: Rs. $sum",
                      style: GoogleFonts.openSans(
                          color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff592222),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Myroutes.cart);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "   Add to Cart",
                          style: GoogleFonts.openSans(
                              fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Myroutes.cart);
                        },
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
