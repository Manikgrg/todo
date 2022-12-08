import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/screens/HomeScreen.dart';

class TOdoapp extends StatelessWidget{
  const TOdoapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TOdo Apps',
      theme: ThemeData(fontFamily: GoogleFonts.nunito().fontFamily),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );

  }

}