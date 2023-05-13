import 'dart:async';

import 'package:bb/pages/HomePage.dart';
import 'package:bb/pages/LoginPage.dart';
import 'package:bb/pages/Page_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 230, 0, 0),
            Colors.pink,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Center(
          child: Text("BUDGET BIRIYANI",
              style: GoogleFonts.anybody(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
