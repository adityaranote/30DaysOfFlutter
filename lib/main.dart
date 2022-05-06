import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/utils/routes.dart';
import 'package:shop_app/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
