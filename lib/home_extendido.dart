import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeExtendido(),
    );
  }
}

class homeExtendido extends StatelessWidget {
  const homeExtendido({Key? key});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).devicePixelRatio;
    final atop = 287 / scale;
    final aleft = 127 / scale;
    final rightUltimoBotao = 536 / scale;
    const iconSize = 47.0;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFE9E9E9),
        body: Center(
         
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                // CARDÁPIO - LETREIRO
                const Padding(padding: EdgeInsetsDirectional.only(top: 187)),
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
                const SizedBox(height: 180,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    GestureDetector(
                      onTap: () {},
                      // botão de chamar garçom 
                      child: SizedBox(
                        width: 138,
                        height: 36,
                        child: PhysicalModel(
                          elevation: 4,
                          color: const Color(0xFF000000).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFD9D9D9),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Chamar garçom",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    GestureDetector(
                      onTap: () {},

                    // botão de chamar garçom  - acesso 
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: PhysicalModel(
                        elevation: 4,
                        color: const Color(0xFF000000).withOpacity(0.25),
                        shape: BoxShape.circle,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),
                          ),
                          
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50)),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 138,
                        height: 36,
                        child: PhysicalModel(
                          elevation: 4,
                          color: const Color(0xFF000000).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFD9D9D9),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Pedir Conta",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {},
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: PhysicalModel(
                        elevation: 4,
                        color: const Color(0xFF000000).withOpacity(0.25),
                        shape: BoxShape.circle,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: rightUltimoBotao),
                    ),
                    SizedBox(
                      width: 101,
                      height: 101,
                      child: PhysicalModel(
                        elevation: 4,
                        color: const Color(0xFF000000).withOpacity(0.25),
                        shape: BoxShape.circle,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomePage()),
                              );
                            },
                            icon: Icon(
                              Icons.close,
                              size: iconSize,
                              color: const Color(0xFF5B5B5B),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          
        ),
      ),
    );
  }
}
