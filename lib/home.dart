import 'dart:ffi';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Center(
        child: 
        
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 187)),
              
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

              SizedBox(height: 340,),


                Row(
                mainAxisAlignment: MainAxisAlignment.center,
            
            
            children: [
             Padding(padding: EdgeInsets.only(left: 209)),
              
              
               SizedBox(
                width: 101,
                height: 101,
                child: PhysicalModel(
                  elevation: 4,
                  color: const Color(0xFF000000).withOpacity(0.25),
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
            ],
           ),

           

     
            ],


            
          
        ),


            
      ),
    );
  }
}
