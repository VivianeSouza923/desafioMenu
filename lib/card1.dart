import 'package:flutter/material.dart';

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
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key});

  @override
  Widget build(BuildContext context) => Scaffold(
      
      backgroundColor: const Color(0xFFE9E9E9),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
          
          Container(
            
          
            padding: const EdgeInsets.only(top: 334, bottom: 335),
            //glória a Deus!
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 65),
            

            width: 300,
            height: 263,
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
           
            
          
            child: Column(
               mainAxisAlignment:MainAxisAlignment.center,
               
               

              children: [
                
                


                
                 Container(
                 
                // padding: const EdgeInsets.fromLTRB(264, 20, 20, 227),
         
                      child: XButton(
                          size: 40,
                          color: const Color(0xFF5B5B5B),
                          onPressed: () {
                          // Terminar ainda
                          print("n sei");
                          },
                      ),),
                 
              
         
                   
               
              
              ],

              ),
                
              /*  Row( children: 
                
                const [
                  Text(
                  "Atenção",
                  style: TextStyle(
                    color: Color(0xFF5B5B5B),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ], 
                ),
               
                const Text(
                  "Olá, o estabelecimento cobra 10% de taxa adicional e couvert a partir das 20h.",
                  style: TextStyle(
                    color: Color(0xFF5B5B5B),
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],*/
            
          ),
        ],
      ),
    );
}
