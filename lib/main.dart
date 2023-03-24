import 'package:flutter/material.dart';
import 'package:login_screen/screen/3rdscreen/final_screen.dart';
import 'package:login_screen/screen/3rdscreen/provider/screen_provider.dart';
import 'package:login_screen/screen/signIn_screen/view/sign_in.dart';
import 'package:login_screen/screen/signup_screen/view/signup.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Screen_view_provider(),),
  ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Sign_in_screen(),
          'Sign_up_screen':(context) => Sign_up_screen(),
          'screen':(context) => Third_screen(),
        },
      ),
    ),
  );
}

