import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/routes.dart';

class SpecialPage extends StatelessWidget {
  const SpecialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/bg image.png", fit: BoxFit.fill),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Our Special",
                    style: GoogleFonts.cinzel(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color(0xff592222),
                        ),
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 8.0,
                          color: Color(0xff592222),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Myroutes.calling);
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/song.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Song\nRequest",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white, fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Myroutes.calling);
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/bday.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Birthday\nCelebration",
                                        style: GoogleFonts.roboto(
                                            color: Colors.white, fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Myroutes.calling);
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/anv.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Anniversary\nCelebration",
                                          style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 20,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Myroutes.calling);
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/todays.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Today's\nSpecial",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
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
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Myroutes.menu);
                },
                child: Row(
                  children: [
                    Text(
                      "Go to Restaurant Menu",
                      style: GoogleFonts.openSans(
                          color: Color(0xff592222), fontSize: 15),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Color(0xff592222),
                    )
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
