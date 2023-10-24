import 'package:testproject/bookpagesshowcase/adventure.dart';
import 'package:testproject/bookpagesshowcase/crime.dart';
import 'package:testproject/bookpagesshowcase/fantasy.dart';
import 'package:testproject/bookpagesshowcase/romance.dart';

import '../pages/homepage1.dart';
import '../pages/listviewforbooks.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

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
          "Categories :",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: GridView(
          physics: const BouncingScrollPhysics(),          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 16 / 15,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
                  children: [
                    
                    GestureDetector(
                      child: Container(
                       
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage("https://images.unsplash.com/photo-1474932430478-367dbb6832c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmljdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                        alignment: Alignment.bottomLeft,

                        child: Text(
                        "Fiction",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>fantasy()));
                },
                    ),
                    
      //for the classics 
      GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(  "https://images.unsplash.com/photo-1455885661740-29cbf08a42fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2xhc3NpYyUyMGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" ),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "Classic",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>adventure()));
                },
                    ),
                    
      //for the romance
      GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage( "https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cm9tYW5jZSUyMGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "Romance",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>ListViewPage()));
                },
                    ),
                    
      //for the mystery
      GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(  "https://images.unsplash.com/photo-1587876931567-564ce588bfbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG15c3RlcnklMjBib29rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "Mystery",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>crime()));
                },
                    ),
                    
      //for the fantasy 
      GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(   "https://images.unsplash.com/photo-1439902315629-cd882022cea0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmFudGFzeSUyMGJvb2tzfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "Fantasy",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>fantasy()));
                },
                    ),
                    
      //for the History
      GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(  "https://images.unsplash.com/photo-1562673005-7693bd6d6e54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGlzdG9yeXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "History",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>adventure()));
                },
                    ),
                   
      //for the comics
      GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(  "https://images.unsplash.com/photo-1608889476561-6242cfdbf622?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29taWN8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "Manga/comic",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>romance()));
                },
                    ),
                    
      //for the Crime
      GestureDetector(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(  "https://images.unsplash.com/photo-1625449281218-cbb6183f0aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y3JpbWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                              fit: BoxFit.cover),
                        ),
                                         alignment: Alignment.bottomLeft,

                        child: Text(
                        "Crime",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      ),
                      onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>crime()));
                },
                    ),
                    
      
                  ],
                ),
      ),
            );
          }
  }
