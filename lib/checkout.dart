import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/pizza.dart';
import 'package:iserve/routes.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int i = 0;
  var check1 = 0;
  var check2 = 0;
  var check3 = 0;
  var check4 = 0;
  var check5 = 0;
  var check6 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc1c1c1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Final Invoice",
          style: GoogleFonts.robotoSlab(color: Color(0xff7a0000), fontSize: 25),
        ),
      ),
      body: Container(
        //color: Colors.amber,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Product",
                        style: GoogleFonts.roboto(
                            color: Color(0xff592222), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "QTY",
                        style: GoogleFonts.roboto(
                            color: Color(0xff592222), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Price",
                        style: GoogleFonts.roboto(
                            color: Color(0xff592222), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total",
                        style: GoogleFonts.roboto(
                            color: Color(0xff592222), fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: pizza.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          child: (pizza[index] == "Margherita" && ma != 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        pizza[index] + "         ",
                                        style: GoogleFonts.roboto(),
                                      ),
                                      Text(ma.toString(),
                                          style: GoogleFonts.roboto()),
                                      Text("110"),
                                      Text((ma * 110).toString(),
                                          style: GoogleFonts.roboto())
                                    ],
                                  ),
                                )
                              : Container(),
                        ),
                        Container(
                          child: (pizza[index] == "Peppy Paneer" && ppa != 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(pizza[index] + "    ",
                                          style: GoogleFonts.roboto()),
                                      Text(ppa.toString(),
                                          style: GoogleFonts.roboto()),
                                      Text("190", style: GoogleFonts.roboto()),
                                      Text((ppa * 190).toString(),
                                          style: GoogleFonts.roboto())
                                    ],
                                  ),
                                )
                              : Container(),
                        ),
                        Container(
                          child: (pizza[index] == "Deluxe Veggie" && dv != 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(pizza[index] + "   ",
                                          style: GoogleFonts.roboto()),
                                      Text(dv.toString(),
                                          style: GoogleFonts.roboto()),
                                      Text("210", style: GoogleFonts.roboto()),
                                      Text((dv * 210).toString(),
                                          style: GoogleFonts.roboto())
                                    ],
                                  ),
                                )
                              : Container(),
                        ),
                        Container(
                          child: (pizza[index] == "Maxican Pizza" && mp != 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(pizza[index] + "    ",
                                          style: GoogleFonts.roboto()),
                                      Text(mp.toString(),
                                          style: GoogleFonts.roboto()),
                                      Text("260", style: GoogleFonts.roboto()),
                                      Text((mp * 260).toString(),
                                          style: GoogleFonts.roboto())
                                    ],
                                  ),
                                )
                              : Container(),
                        ),
                        Container(
                          child: (pizza[index] == "Italian Pizza" && ip != 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(pizza[index] + "        ",
                                          style: GoogleFonts.roboto()),
                                      Text(ip.toString(),
                                          style: GoogleFonts.roboto()),
                                      Text("310", style: GoogleFonts.roboto()),
                                      Text((ip * 310).toString(),
                                          style: GoogleFonts.roboto())
                                    ],
                                  ),
                                )
                              : Container(),
                        ),
                        Container(
                          child: (pizza[index] == "Veggie Paradise" && vp != 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(pizza[index] + " ",
                                          style: GoogleFonts.roboto()),
                                      Text(vp.toString(),
                                          style: GoogleFonts.roboto()),
                                      Text("360", style: GoogleFonts.roboto()),
                                      Text((vp * 360).toString(),
                                          style: GoogleFonts.roboto())
                                    ],
                                  ),
                                )
                              : Container(),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
                      child: Text(
                        "Total : ",
                        style: GoogleFonts.roboto(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                      child: Text(
                        "Rs. $sum",
                        style: GoogleFonts.roboto(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff592222),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Myroutes.payment);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                        child: Text(
                          "   Pay Now",
                          style: GoogleFonts.openSans(
                              fontSize: 15, color: Colors.white),
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
