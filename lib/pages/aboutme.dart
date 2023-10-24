import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';


class aboutme extends StatefulWidget {
  const aboutme({Key? key}) : super(key: key);

  @override
  State<aboutme> createState() => _aboutmeState();
}

class _aboutmeState extends State<aboutme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child : Column(
          children: [
            Stack(
                        clipBehavior: Clip.none,
            alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 77),
                      child: Image.asset(
                        'images/cover.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                                  Positioned(
                  top: 135,
                  child: CircleAvatar(
                    radius: 65,
                     backgroundImage: AssetImage('images/rrr.jpg'),
                  )
                  ),
                  ],
                  
 
              ),
               Container(
                  child: Text(
                    'Chadi kammoun',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'BornStrong',
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'ISIMM student',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color.fromARGB(255, 47, 46, 46),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.linkedin, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.linkedin.com/in/chadi-kammoun')),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.behance, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.behance.net/chadi-kammoun')),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.instagram, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.instagram.com/chadikammoun/')),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.facebook, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.facebook.com/chadii6/')),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                  child: Container(
                    child: Align(
                      alignment: Alignment(-0.87, 0),
                      child: Text(
                        'About:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'BornStrong',
                          fontSize: 30.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 420,
                  height: 450,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'a higher institute of mathematics and computer science student. '
                      'book-era was a passion project of mine , it allows you to go through hundreds of books and discover new information , discover the newest authors and helps you to track your reading progress , you can also add books to you favorites and search the countless categories to find the suitable book for you.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
          ],
          
        ),
      ),
    );
  }
}
