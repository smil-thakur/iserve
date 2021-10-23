import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/calliserve.dart';
import 'package:iserve/first.dart';
import 'package:iserve/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Call()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Image.asset(
              "assets/images/bg image.png",
              fit: BoxFit.cover,
              //width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "iServe",
                  style: GoogleFonts.cinzel(
                    color: const Color(0xff592222),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color(0xffFCF6B7),
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 8.0,
                        color: Color(0xffFCF6B7),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Serving Passion",
                  style: GoogleFonts.cinzel(
                    color: const Color(0xff592222),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color(0xffFCF6B7),
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 8.0,
                        color: Color(0xffFCF6B7),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 400),
                  child: Text(
                    "Welcome To Our Restaurant!",
                    style: GoogleFonts.merriweather(
                        color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
