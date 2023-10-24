import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class registerpage extends StatefulWidget {
  final VoidCallback showloginpage;
  const registerpage({
    Key? key, required this.showloginpage}) : super(key: key);

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {

//text controllers

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();
  final _firstnamecontroller = TextEditingController();
  final _lastnamecontroller = TextEditingController();


  bool _obscureText = true;

//hide/show password
  @override
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
//disposeof controllers
  void dispose() {
  _emailController.dispose();
  _passwordController.dispose();
  _confirmpasswordcontroller.dispose();
  _lastnamecontroller.dispose();
  _firstnamecontroller.dispose();


    super.dispose();
  }
 Future signup() async {
  if(passwordconfirmed()){

  //create user

     FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: _emailController.text.trim(),
     password: _passwordController.text.trim(),
     
   );
//add user details
adduserdetails(
  _firstnamecontroller.text.trim(),
  _lastnamecontroller.text.trim(),
  _emailController.text.trim(),

);
  }
 }
 Future adduserdetails(
  String firstname , String lastname , String email)async{
  await FirebaseFirestore.instance.collection('users').add({
    'first name': firstname,
    'last name': lastname,
    'email': email ,
  });
 }


 //confirm password

 bool passwordconfirmed(){
  if(_passwordController.text.trim()== _confirmpasswordcontroller.text.trim()){
    return true;
  }else{
    return false;
  }
 }
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//welcome sign
              Text(
                "Welcome !",
                style: GoogleFonts.bebasNeue(
                fontSize: 52,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Register below with your details",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
                            SizedBox(height: 50),
//firsname text
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _firstnamecontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'First name',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
//last name 
Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _lastnamecontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last name',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
//email textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
//password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _confirmpasswordcontroller,
                      obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixIcon:IconButton(
                                onPressed: _toggle, icon: _obscureText
              ? Icon(Icons.remove_red_eye)
              : Icon(
                  Icons.visibility_off

                ),),
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
//confirm password
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixIcon:IconButton(
                                onPressed: _toggle, icon: _obscureText
              ? Icon(Icons.remove_red_eye)
              : Icon(
                  Icons.visibility_off

                ),),
                        border: InputBorder.none,
                        hintText: 'Confirm password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
// sign in button
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: signup,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ), // BoxDecoration
                      child: Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        
                      ),
                    ),
                  )),
              SizedBox(height: 25),
// i am a member , login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I am a member. ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  GestureDetector(
                    onTap: widget.showloginpage,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        )
      )
    );
  }
}

