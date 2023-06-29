import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iniciocardapio/card2.dart';

import 'home.dart';


class XButton extends StatelessWidget {
  final double size;
  final Color color;
  final VoidCallback onPressed;

  const XButton({
    Key? key,
    required this.size,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 16,
        height: 16,
        child: CustomPaint(
          painter: XPainter(color: const Color(0xFF5B5B5B)),
        ),
      ),
    );
  }
}

class XPainter extends CustomPainter {
  final Color color;

  XPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(XPainter oldDelegate) => color != oldDelegate.color;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardOne(),
    );
  }
}

class CardOne extends StatelessWidget {
  const CardOne({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(65.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 263,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),

                  //padding: EdgeInsets.fromLTRB(224, 20, 20, 227),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 218,
                          ),
                          XButton(
                            size: 40,
                            color: const Color(0xFF5B5B5B),
                            onPressed: () {
                              // Terminar ainda
                               Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomePage()),
                                );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          //Padding(padding: EdgeInsets.only()),

                          Text(
                            "Atenção",
                            style: GoogleFonts.inter(
                              
                              color: const Color(0xFF5B5B5B),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                             ), 
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const SizedBox(
                            width: 10,
                          ),
                          //Padding(padding: EdgeInsets.only()),

                          Text(
                            "Olá, o estabelecimento \n    cobra 10% de taxa\n adicional e couvert a\n       partir das 20h.",
                            style: GoogleFonts.inter(
                              color: Color(0xFF5B5B5B),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          const SizedBox(width: 98),
                          Container(
                            width: 17,
                            height: 17,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF676767),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            //margin: const EdgeInsets.only(right: 30.0),
                            width: 17,
                            height: 17,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFD9D9D9),
                            ),
                            child: InkWell(
                              onTap: () {
                                // Ação do botão
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CardTwo()),
                                  );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 0),
                                width: 58,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFC5C5C5),
                                ),
                                child: 
                                SizedBox(
                                  width: 12,
                                  height: 24,
                                  child: IconButton(
                                    onPressed: () {
                                       Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const CardTwo()),
                                       );
                                    },
                                    icon: const Icon(
                                        Icons.arrow_forward_ios_outlined),
                                    color: const Color(0xFF676767),
                                    padding: const EdgeInsets.all(4),
                                  
                              
                                        
                                  ),
                                  
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
