// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_ui/Data/cart_provider.dart';
import 'package:ecommerce_app_ui/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.amber,
            textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
            scaffoldBackgroundColor: Color(0xffffffff),
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.grey,
                statusBarBrightness: Brightness.dark,
              ),
            )),
        home: LoginPage(),
      ),
    );
  }
}
