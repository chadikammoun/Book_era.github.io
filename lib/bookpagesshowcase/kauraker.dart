import 'package:flutter/material.dart';
import 'package:testproject/pages/homepage1.dart';



class kauraker extends StatefulWidget {
  const kauraker({Key? key}) : super(key: key);

  @override
  State<kauraker> createState() => _kaurakerState();
}

class _kaurakerState extends State<kauraker> {
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
          "Authors",
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
                     backgroundImage: AssetImage('images/authimg/82.jpg'),
                  )
                  ),
                  ],
                  
 
              ),
               Container(
                  child: Text(
                    'Jon Krakauer',
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
                    '4.3/5',
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
"Jon Krakauer is an American writer and mountaineer, well-known for outdoor and mountain-climbing writing.",
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
