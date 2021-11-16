import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iserve/routes.dart';
import 'package:iserve/splash.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Splash()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo 1.png"),
                Text(
                  "iSERVE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: LinearProgressIndicator(
                    color: Colors.yellow,
                    backgroundColor: Colors.blue,
                  ),
                  width: 200,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
