import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testproject/pages/aboutme.dart';
import 'package:testproject/pages/categories.dart';
import 'package:testproject/pages/homepage.dart';
import '../habittracker/habittracker.dart';

class homepage1 extends StatefulWidget {
  const homepage1({Key? key}) : super(key: key);

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
   int selectedIndex = 0;
    void navigationbottombar(int index){
      setState(() {
        selectedIndex = index;
      });
    }

  final List<Widget> _pages = [
   homepage(),
   Categories(),
   HomePage(),//habittracker
   aboutme(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal :5.0,
            vertical: 5,
            ),
    
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.deepPurple,
              activeColor: Colors.white ,
              tabBackgroundColor: Colors.deepPurple.shade100,
              padding: EdgeInsets.all(16) ,
              gap: 8,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                 GButton(
                  icon: Icons.library_books,
                  text: 'Categories',
                ),
                 GButton(
                  icon: Icons.calendar_month,
                  text: 'Tracker',
                ),
                GButton(
                  icon: Icons.error_outline_outlined,
                  text: 'About me',
                ),
              ],
              selectedIndex: selectedIndex,
               onTabChange: navigationbottombar,
            ),
          ),
        ),

    );
  }
}