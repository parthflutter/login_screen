import 'package:flutter/material.dart';
import '../../../ulitis/shared.dart';

class Sign_up_screen extends StatefulWidget {
  const Sign_up_screen({Key? key}) : super(key: key);

  @override
  State<Sign_up_screen> createState() => _Sign_up_screenState();
}

TextEditingController txtemail = TextEditingController();
TextEditingController txtpassword = TextEditingController();

class _Sign_up_screenState extends State<Sign_up_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign_up_page"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  var email = txtemail.text;
                  var password = txtpassword.text;
                  Shr shr = Shr();
                shr.createShr(email as String, password as String);
                  Navigator.pop(context, 'Sign_in_screen');
                },
                child: Text("SignUp",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
