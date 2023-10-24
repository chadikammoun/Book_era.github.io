import 'package:flutter/material.dart';
import 'package:testproject/pages/homepage1.dart';



class intothewild extends StatefulWidget {
  const intothewild({Key? key}) : super(key: key);

  @override
  State<intothewild> createState() => _intothewildState();
}

class _intothewildState extends State<intothewild> {
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
                     backgroundImage: AssetImage('images/bookim/19.jpg'),
                  )
                  ),
                  ],
                  
 
              ),
               Container(
                  child: Text(
                    'Into the wild',
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
        "In April, 1992, a young man from a well-to-do family hitchhiked to Alaska and walked alone into the wilderness north of Mt. McKinley. His name was Christopher Johnson McCandless. He had given 25,000 in savings to charity, abandoned his car and most of his possessions, burned all the cash in his wallet, and invented a new life for himself. Four months later, a party of moose hunters found his decomposed body. How McCandless came to die is the unforgettable story of Into the Wild.",
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
