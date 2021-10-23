import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/routes.dart';

class WaitingPage extends StatefulWidget {
  const WaitingPage({Key? key}) : super(key: key);

  @override
  _WaitingPageState createState() => _WaitingPageState();
}

class _WaitingPageState extends State<WaitingPage> {
  void initState() {
    super.initState();
    start();
  }

  start() async {
    await Future.delayed(Duration(milliseconds: 1000), () {});
    startTimer();
  }

  late Timer _timer;
  String greet = "Your Order is Placed";

  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            greet = "Your Order is Arrived";
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Column(
          children: [
            Text(
              "iServe",
              style: GoogleFonts.robotoSlab(
                  color: Color(0xff592222), fontSize: 30),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              greet,
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 25),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bgi.png",
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Color(0xff592222)),
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white.withOpacity(0.8)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: Column(
                      children: [
                        Text(
                          "Estimated time :",
                          style: GoogleFonts.openSans(color: Color(0xff00464e)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$_start",
                          style: GoogleFonts.openSans(color: Color(0xff00464e)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
                  Navigator.pushNamed(context, Myroutes.menu);
                },
                child: Row(
                  children: [
                    Text(
                      "Add to Your Order",
                      style: GoogleFonts.openSans(
                          color: Color(0xff592222), fontSize: 15),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Color(0xff592222),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Myroutes.checkout);
                },
                child: Container(
                  //color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Text(
                      "Check Out",
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 15),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff592222),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
