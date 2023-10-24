import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class intropage3 extends StatefulWidget {
  const intropage3({Key? key}) : super(key: key);

  @override
  State<intropage3> createState() => _intropage1State();
}

class _intropage1State extends State<intropage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Column(
        children: [
                        SizedBox(height: 130),
          Text(
                "Track your Progress",
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                                    color : Colors.black
                ),
              ),
                            SizedBox(height: 30),

          Padding(
            
            padding : const EdgeInsets.all(0),
            child: ClipRRect(
              borderRadius : BorderRadius.circular(10),
              child: Container(
  child: Image.asset(
                        'images/list.png'),              ),
            ),
          ),
        ],
      ),
              );
  }
}