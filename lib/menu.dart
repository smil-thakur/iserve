import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/routes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/bg image.png",
              fit: BoxFit.fill,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "iServe Restaurant",
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
                    height: 550,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, Myroutes.pizza);
                                },
                                child: Container(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/images/pizza.png"),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Pizza",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 20)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/sand.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Sandwich",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/punjabi.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Punjabi",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/chinese.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Chinese",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/gujarati.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Gujurati",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/mexican.png"),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Mexican",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
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
                  Navigator.pushNamed(context, Myroutes.special);
                },
                child: Row(
                  children: [
                    Text(
                      "Go to Our Special",
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
