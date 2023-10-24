import 'package:flutter/material.dart';
import 'package:testproject/pages/homepage1.dart';



class gameofthrones extends StatefulWidget {
  const gameofthrones({Key? key}) : super(key: key);

  @override
  State<gameofthrones> createState() => _gameofthronesState();
}

class _gameofthronesState extends State<gameofthrones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        // App Bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>homepage1())),
          ),
        title: Text(
          "Books",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
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
                     backgroundImage: AssetImage('images/books/1.jpg'),
                  )
                  ),
                  ],
                  
 
              ),
               Container(
                  child: Text(
                    'Game of thrones',
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
                    '4.6/5',
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
                      'Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister forces are massing beyond the kingdom’s protective Wall. To the south, the king’s powers are failing—his most trusted adviser dead under mysterious circumstances and his enemies emerging from the shadows of the throne. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the frozen land they were born to. Now Lord Eddard Stark is reluctantly summoned to serve as the king’s new Hand, an appointment that threatens to sunder not only his family but the kingdom itself.',
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
