import 'package:flutter/material.dart';

class doctorcard extends StatelessWidget {
  final String Docimage;


  doctorcard(
      {required this.Docimage,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
        child: Container(
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
             image: DecorationImage(
          image: AssetImage(
               Docimage,),
          fit: BoxFit.fill
        ),
          ),
         /* child: Column(
            children: [
              SizedBox(height: 8),

              //picure of doc
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  Docimage,
                  height: 80,
                ),
              ),
              SizedBox(height: 10),
              //rating
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  Text(
                    rating,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              //doctor name
              Text(
                doctorname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),

              //title
              Text(profession),
            ],
          ),*/
        ),
      ),
    );
  }
}
