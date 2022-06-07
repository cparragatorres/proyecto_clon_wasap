import 'package:flutter/material.dart';
import 'package:proyecto_clon_wasap/pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Clone",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xff008069),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff00A884),
        ),
      ),
      home: HomePage(),
    );
  }
}

