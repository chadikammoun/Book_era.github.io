import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class intropage1 extends StatefulWidget {
  const intropage1({Key? key}) : super(key: key);

  @override
  State<intropage1> createState() => _intropage1State();
}

class _intropage1State extends State<intropage1> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Column(
        children: [
                        SizedBox(height: 130),
          Text(
                "Greetings , fellow reader",
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                                    color : Colors.black
                ),
              ),
                            SizedBox(height: 30),

          Padding(
            
            padding : const EdgeInsets.all(30),
            child: ClipRRect(
              borderRadius : BorderRadius.circular(0),
              child: Container(
                  child: Image.asset(
                        'images/logo.png'),
              ),
            ),
          ),
        ],
      ),
              );
  }
}