import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/routes.dart';

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo 1.png"),
            Text(
              "iSERVE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Myroutes.splash);
              },
              child: Container(
                width: 200,
                height: 200,
                child: Center(
                  child: Text(
                    "Scan QR Again",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff592222),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 5, color: const Color(0xff592222)),
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
