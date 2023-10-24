// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'listviewforauthors.dart';



class Selectedauthors extends StatelessWidget {
  final String img;
  final String title;
  final String desc;


  Selectedauthors(
      {required this.img,
      required this.title,
      required this.desc,
  


      });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // App Bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>ListViewauth())),
          ),
        title: Text(
          "Authors",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.transparent,
        child: FlatButton(
          color: Colors.deepPurple,
          onPressed: () {
          },
          child: 
            Text(
            'Remove from favorites',
            style: GoogleFonts.openSans(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          /*: Text(
            'Add to favorites',
            style: GoogleFonts.openSans(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),*/
        
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children : [
             
              Stack(
                        clipBehavior: Clip.none,
            alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 77),
                      child: Image.asset(
                        'images/bookim/74.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                                  Positioned(
                  top: 135,
                  child: CircleAvatar(
                    radius: 65,
                     backgroundImage: AssetImage(img),
                  )
                  ),
                  ],
                  
 
              ),
            Container(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'BornStrong',
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),          
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 420,
                  height: 450,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                     desc,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
          ]
        ),
      ),
    );
  }
}