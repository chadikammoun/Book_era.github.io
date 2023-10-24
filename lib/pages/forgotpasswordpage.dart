import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final _emailController = TextEditingController();



  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
  Future passwordreset()async{
   try{
     await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
         showDialog(context: context,
     builder: (context){
      return AlertDialog(
        content: Text('Password reset link sent ! check your email'),
      );
     }
     );
   }on FirebaseAuthException catch(e){
    print(e);
    showDialog(context: context,
     builder: (context){
      return AlertDialog(
        content: Text(e.message.toString()),
      );
     }
     );
   }

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
      ), // AppBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Enter Your Email and we will send you a password reset link',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),

            ),
          ),

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

          MaterialButton(
            onPressed: passwordreset,
            child: Text('Reset Password'),
            color: Colors.deepPurple[200],
           ),
        ],
      ),
    );
  }
}
