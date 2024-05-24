import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodgo/views/home.dart';
import 'package:google_fonts/google_fonts.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override

  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_)=> const home()));
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [ Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [ Color(0xffEF2A39), Color(0xffFF939B)],
                stops: [0.5, 1.0],
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 250),
              child: Text(
                "Foodgo",
                style: GoogleFonts.lobsterTextTheme().displayLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 637,),
                Container(
                  height: 200,
                  width: 155,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/image/image2.png"))
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 691,),
                Row(
                  children: [
                    SizedBox(width: 100,),
                    Container(
                      height: 147,
                      width: 155,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/image1.png"))
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]
      ),
    );
  }
}
