import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testproject/bookpagesshowcase/adventure.dart';
import 'package:testproject/bookpagesshowcase/aurelius.dart';
import 'package:testproject/bookpagesshowcase/crime.dart';
import 'package:testproject/bookpagesshowcase/fantasy.dart';
import 'package:testproject/bookpagesshowcase/gameofthrones.dart';
import 'package:testproject/bookpagesshowcase/george.dart';
import 'package:testproject/bookpagesshowcase/intothewild.dart';
import 'package:testproject/bookpagesshowcase/kauraker.dart';
import 'package:testproject/bookpagesshowcase/meditations.dart';
import 'package:testproject/bookpagesshowcase/romance.dart';
import 'package:testproject/bookpagesshowcase/thehobbit.dart';
import 'package:testproject/bookpagesshowcase/tolkein.dart';
import 'package:testproject/pages/categories.dart';
import 'package:testproject/pages/listviewforauthors.dart';
import 'package:testproject/pages/listviewforbooks.dart';
import 'package:testproject/pages/searchbar.dart';
import 'package:testproject/utilities/categorycard.dart';
import 'package:testproject/utilities/bookscard.dart';
import 'boarding_page.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selectedIndex = 0;
  void navigationbottombar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  User? user = FirebaseAuth.instance.currentUser;
//document id
  List<String> docIds = [];
//get docids
  Future getdocId() async {
    await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: user?.email)
        .get()
        .then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIds.add(document.reference.id);
          }),
        );
  }

  @override
  void initState() {
    getdocId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        Text(
                          'Hello',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'And welcome to book era!',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        /* Expanded(
                            child: FutureBuilder(
                              future: getdocId(),
                              builder:(context, snapshot) {
                                return ListView.builder(itemBuilder: (context, index) {
                                  return ListTile(
                                    title: getusername(documentId: docIds[index]),
                                  );
                            }
                            );
                                
                              },
                              ),
                          ),*/
                      ],
                    ),
                    //profile picture
                    Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),

                      //create the popup to logout
                      child: PopUpMen(
                        menuList: [
                          PopupMenuItem(
                            child: ListTile(
                              title: Text(user!.email.toString()),
                            ),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem(
                            child: ListTile(
                              leading: Icon(
                                Icons.logout,
                              ),
                              title: Text("Log Out"),
                              onTap: () => FirebaseAuth.instance.signOut(),
                            ),
                          ),
                        ],
                        icon: Icon(
                          Icons.person,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //card how do you feel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(children: [
                    //pic animation
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('images/logo.png'),
                      color: Colors.pink[100],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //get started
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get to know us better',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'For more instructions, please',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'tap the button below.',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          onboardingpage()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'get started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 25),
              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you ?',
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => searchbar()));
                    },
                  ),
                ),
              ),

              //categories

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'see all',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.blueGrey),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Categories()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              //categories listview
              Container(
                height: 100,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/5.jpg',
                      ),
                       onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => fantasy()));
                      },
                    ),
                    GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/6.jpg',
                      ),
                       onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => crime()));
                      },
                    ),
                    GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/7.jpg',
                      ),
                       onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => romance()));
                      },
                    ),
                    GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/8.jpg',
                      ),
                       onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => adventure()));
                      },
                    ),

                    // categorycard(),
                    //you can create multiple of htem
                  ],
                ),
              ),

              SizedBox(height: 25),

              //booklist
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discover the bestselling books : ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'see all',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.blueGrey),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => ListViewPage()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: doctorcard(
                        Docimage: 'images/books/1.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => gameofthrones()));
                      },
                    ),
                    GestureDetector(
                      child: doctorcard(
                        Docimage: 'images/books/2.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => intothewild()));
                      },
                    ),
                    GestureDetector(
                      child: doctorcard(
                        Docimage: 'images/books/3.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => thehobbit()));
                      },
                    ),
                    GestureDetector(
                      child: doctorcard(
                        Docimage: 'images/books/4.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => meditations()));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'authors: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      child: Text(
                        'see all',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.blueGrey),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => ListViewauth()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              //authors
              Container(
                height: 100,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                     GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/1.1.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => george()));
                      },
                    ), GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/2.1.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => kauraker()));
                      },
                    ), GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/3.1.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => tolkein()));
                      },
                    ),
                    GestureDetector(
                      child: categorycardforcategories(
                        icon: 'images/books/4.1.jpg',
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => aurelius()));
                      },
                    ),
                    // categorycard(),
                    //you can create multiple of htem
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// for the pop up /logout function
class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMen({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}
