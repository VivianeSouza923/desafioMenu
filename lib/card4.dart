import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardFour(),
    );
  }
}

class CardFour extends StatelessWidget {
  const CardFour({Key? key});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).devicePixelRatio;

    final aright = 148 / scale;
    final abottom = 602 / scale;
    final atop = 287 / scale;
    final aleft = 127 / scale;

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(aleft, atop, aright, abottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cardápio",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 36,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
