import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mwhatsapp/screens/auth/loginphone.dart';
// import 'package:firebase_core_web/firebase_core_web.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPhone(),
    );
  }
}
