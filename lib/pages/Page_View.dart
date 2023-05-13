import 'package:bb/BottemNav.dart';
import 'package:bb/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page_View extends StatefulWidget {
  const Page_View({super.key});

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  PageController _controller = PageController();
  bool OnLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              onPageChanged: (index) {
                setState(() {
                  OnLastPage = (index == 2) ? true : false;
                });
              },
              controller: _controller,
              children: [
                Container(
                  color: Colors.white,
                ),
                Container(
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
                Container(
                  color: Colors.white,
                )
              ]),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text('Skip')),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  OnLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottemNav()));
                          },
                          child: Text("Done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text('Next'))
                ],
              ))
        ],
      ),
    );
  }
}
