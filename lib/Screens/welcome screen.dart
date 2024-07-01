import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Container(
            padding: EdgeInsets.only(top: 100,bottom: 40),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text("Coffee Shop", style: GoogleFonts.pacifico(
                  fontSize: 50,
                  color: Colors.white,
                ),),
                Column(children: [
                  Text('Feeling low? Take a Sip of Coffee',
                   style: TextStyle(
                     color: Colors.white.withOpacity(0.8),
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                     letterSpacing: 1,
                   ),),
                  SizedBox(height: 80),
                  Material(
                    color: Color(0xFFE57734),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        child: Text('Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),),
                      ),
                    ),
                  ),
                ],)
              ],),
          ),
    );
  }
}
