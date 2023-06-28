import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iniciocardapio/home_extendido.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({Key? key});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).devicePixelRatio;

    final aright = 148 / scale;
    final abottom = 602 / scale;
    final atop = 287 / scale;
    final aleft = 127 / scale;

    final bright = 70 / scale;
    final bbottom = 118 / scale;
    final btop = 713 / scale;
    final bleft = 259 / scale;

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
             
              Padding(
                padding: EdgeInsets.fromLTRB(bleft, btop, bright, bbottom),
                child: SizedBox(
                  width: 101,
                  height: 101,
                  child: PhysicalModel(
                    elevation: 4,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD9D9D9),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const homeExtendido()),
                                );
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 68,
                          color: Colors.black,
                        ),
                      ),
                    ),
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
