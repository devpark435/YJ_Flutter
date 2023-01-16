import 'package:flutter/material.dart';
import 'package:yj_class/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YJ',
      theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
          fontFamily: "NotoSans"),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginScreen(),
      },
    );
  }
}
