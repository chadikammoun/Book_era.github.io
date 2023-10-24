import 'package:flutter/material.dart';

class categorycardforcategories extends StatelessWidget {
  final icon;
  categorycardforcategories({
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 150,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
          image: AssetImage(
               icon,),
          fit: BoxFit.fill
        ),
        ),
        /*child: Column(
          children: [
            Text(categoryname,
            style: TextStyle(
            fontSize: 18,
                            color: Colors.white
                            )
            
            ),
          ],
        ),*/
      ),
    );
  }
}
