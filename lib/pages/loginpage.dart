import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'forgotpasswordpage.dart';

class loginpage extends StatefulWidget {
  final VoidCallback showregisterpage;
  const loginpage({Key? key, required this.showregisterpage}) : super(key: key);
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
// text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  Future signIn() async {

//loading circle
      showDialog(context: context,
     builder: (context){
      return Center(
        child: CircularProgressIndicator(
          
        ),
      );
     }
     );



    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
//pop the loading circle
    Navigator.of(context).pop();

  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  //show/hide password
     void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
//welcome text
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset('images/logo.png',
                    scale: 2.5,
                    ),
                                  SizedBox(height: 15),
              Text(
                "Hello again !",
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Welcome back, you've been missed",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
//email
              SizedBox(height: 50),
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
//password
              SizedBox(height: 10),
                Container(
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Container(
                  
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextFormField(
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
                              hintText: 'Password',
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
              ),
                ),
//forgot pasword?
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ForgotPasswordPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
// Login button
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ), // BoxDecoration
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 10),
// not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.showregisterpage,
                    child: Text(
                      ' Register now',
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
        )));
  }
}
