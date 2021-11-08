import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iserve/routes.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Say Hello to iServe!",
          style: GoogleFonts.robotoSlab(
            color: Color(0xff592222), fontSize: 25,
            //fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Center(child: Image.asset("assets/images/bgi.png")),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Myroutes.calling);
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 25, 30, 25),
                      child: Text(
                        "Call iServe",
                        style: GoogleFonts.openSans(
                            color: Color(0xff592222), fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff592222), width: 2),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(0.8)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Myroutes.special);
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        " Our Special",
                        style: GoogleFonts.openSans(
                            color: Color(0xff592222), fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff592222), width: 2),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white.withOpacity(0.8)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //color: Colors.red,
                height: 70,
                child: Column(
                  children: [
                    Text(
                      "01",
                      style: GoogleFonts.merriweather(color: Color(0xff005c68)),
                    ),
                    Image.asset(
                      "assets/images/table.png",
                      width: 50,
                    ),
                  ],
                ),
              ),
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
