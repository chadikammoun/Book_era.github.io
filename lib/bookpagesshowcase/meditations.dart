import 'package:flutter/material.dart';
import 'package:testproject/pages/homepage1.dart';



class meditations extends StatefulWidget {
  const meditations({Key? key}) : super(key: key);

  @override
  State<meditations> createState() => _meditationsState();
}

class _meditationsState extends State<meditations> {
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
                     backgroundImage: AssetImage('images/bookim/59.jpg'),
                  )
                  ),
                  ],
                  
 
              ),
               Container(
                  child: Text(
                    'Meditations',
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
                    'by marcus aurelius',
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
        "Written in Greek by the only Roman emperor who was also a philosopher, without any intention of publication, the Meditations of Marcus Aurelius offer a remarkable series of challenging spiritual reflections and exercises developed as the emperor struggled to understand himself and make sense of the universe. While the Meditations were composed to provide personal consolation and encouragement, Marcus Aurelius also created one of the greatest of all works of philosophy: a timeless collection that has been consulted and admired by statesmen, thinkers and readers throughout the centuries.",
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
