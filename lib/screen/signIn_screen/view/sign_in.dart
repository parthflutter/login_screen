import 'package:flutter/material.dart';
import 'package:login_screen/ulitis/shared.dart';

class Sign_in_screen extends StatefulWidget {
  const Sign_in_screen({Key? key}) : super(key: key);

  @override
  State<Sign_in_screen> createState() => _Sign_in_screenState();
}

TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();

class _Sign_in_screenState extends State<Sign_in_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
            controller: txtEmail,
            decoration: InputDecoration(
              label: Text("Email"),
              border: OutlineInputBorder(
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: txtPassword,
            decoration: InputDecoration(
              label: Text("Password"),
              border: OutlineInputBorder(
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () async {
              String userEmail = txtEmail.text;
              String userPassword = txtPassword.text;
              Shr shr = Shr();
              Map m1 = await shr.readShr();
              if (userEmail == m1['e1'] && userPassword == m1['p1']) {
                Navigator.pushNamed(context, 'screen');
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Invalid Id or Password")));
              }
            }, child: Text("SignIn", style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          TextButton(
              onPressed: () {
        Navigator.pushNamed(context, 'Sign_up_screen');
        },
          child: Text(
            "Don't have Account? Sign Up",
            style:TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ],
      ),
    ),)
    ,
    );
  }
}
