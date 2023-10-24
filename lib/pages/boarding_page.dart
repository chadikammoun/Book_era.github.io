import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testproject/intro%20screen/intropage1.dart';
import 'package:testproject/intro%20screen/intropage2.dart';
import 'package:testproject/intro%20screen/intropage3.dart';

import 'homepage1.dart';

class onboardingpage extends StatefulWidget {
  const onboardingpage({Key? key}) : super(key: key);

  @override
  State<onboardingpage> createState() => _onboardingpageState();
}

class _onboardingpageState extends State<onboardingpage> {
  PageController _controller = PageController();
  bool _onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                _onlastpage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              intropage1(),
              intropage2(),
              intropage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text(
                      'skip',
                      style: GoogleFonts.bebasNeue(
                              fontSize: 25, color: Colors.deepPurple),
                    )),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.deepPurple,
                    dotColor: Colors.deepPurple.shade100,
                    dotHeight: 20,
                    dotWidth: 20,
                    spacing: 16,
                  ),
                ),
                _onlastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return homepage1();
                          }));
                        },
                        child: Text(
                          'done',
                          style: GoogleFonts.bebasNeue(
                              fontSize: 25, color: Colors.deepPurple),
                        ))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'next',
                          style: GoogleFonts.bebasNeue(
                              fontSize: 25, color: Colors.deepPurple),
                        )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
