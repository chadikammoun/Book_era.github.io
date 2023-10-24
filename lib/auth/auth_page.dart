import 'package:flutter/src/widgets/framework.dart';
import 'package:testproject/pages/loginpage.dart';
import 'package:flutter/material.dart';

import '../pages/registerpage.dart';

class authpage extends StatefulWidget {
  const authpage({Key? key}) : super(key: key);

  @override
  State<authpage> createState() => _authpageState();
}

class _authpageState extends State<authpage> {

  bool showloginpage = true;
  void togglescreens(){
    setState(() {
      showloginpage= !showloginpage;
    });
  }
  
  get showregisterpage => null;
  @override
  Widget build(BuildContext context) {
      if(showloginpage){
        return loginpage(showregisterpage: togglescreens);
      } else {
        return registerpage(showloginpage: togglescreens,);
      }
    
  }
}