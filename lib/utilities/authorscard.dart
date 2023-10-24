import 'package:flutter/material.dart';

class categorycard extends StatelessWidget {
  final icon;
  final String categoryname;
  categorycard({
    required this.icon,
    required this.categoryname,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
                width: 150,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
           image: DecorationImage(
          image: AssetImage(
               icon,),
          fit: BoxFit.fill
        ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(categoryname,
            style: TextStyle(
            fontSize: 18,
                            color: Colors.white
                            )
            
            ),
          ],
        ),
      ),
    );
  }
}
