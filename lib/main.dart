import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'mobile_page.dart';
import 'otp_page.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDwDYrFf8YO5lXYAnCWt1wsIJdyHmhk_UQ',
          appId: '1:218899203584:android:5d159382a5203b78da3ae5',
          messagingSenderId: '218899203584',
          projectId: 'otp-authentication-83155'
      ));
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Authentication',
      initialRoute: '/',
      routes: {
        '/': (context) => MobilePage(),
        '/otp': (context) => OTPPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
