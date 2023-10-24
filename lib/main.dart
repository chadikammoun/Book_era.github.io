import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:testproject/auth/main_page.dart';
import 'package:firebase_core/firebase_core.dart';





Future main()async{
   // initialize hive
  await Hive.initFlutter();

  // open a box
  await Hive.openBox("Habit_Database");

  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home : MainPage(),
        theme: ThemeData(primarySwatch: Colors.deepPurple),
      );
  }
}

