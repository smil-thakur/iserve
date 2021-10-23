import 'package:flutter/material.dart';
import 'package:iserve/calling.dart';
import 'package:iserve/calliserve.dart';
import 'package:iserve/checkout.dart';

import 'package:iserve/first.dart';
import 'package:iserve/last.dart';
import 'package:iserve/menu.dart';
import 'package:iserve/payment.dart';
import 'package:iserve/pizza.dart';
import 'package:iserve/routes.dart';
import 'package:iserve/special.dart';
import 'package:iserve/splash.dart';
import 'package:iserve/waitingtime.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Myroutes.first,
      routes: {
        Myroutes.first: (context) => First(),
        Myroutes.home: (context) => Home(),
        Myroutes.splash: (context) => Splash(),
        Myroutes.call: (context) => Call(),
        Myroutes.calling: (context) => Calling(),
        Myroutes.menu: (context) => MenuPage(),
        Myroutes.special: (context) => SpecialPage(),
        Myroutes.pizza: (context) => PizzaPage(),
        Myroutes.waiting: (context) => WaitingPage(),
        Myroutes.checkout: (context) => CheckOut(),
        Myroutes.payment: (context) => PaymentPage(),
        Myroutes.last: (context) => LastPage(),
      },
    );
  }
}
