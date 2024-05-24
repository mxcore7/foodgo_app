
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'home.dart';

class produit5 extends StatefulWidget {
  const produit5({super.key});


  @override
  State<produit5> createState() => _produit5State();
}

class _produit5State extends State<produit5> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                      },
                      child: Icon(Icons.arrow_back, size: 30, color: Colors.black,)),
                  Icon(Icons.search, size: 30, color: Colors.black,),
                ],),
              SizedBox(height: 5,),
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/image/food4.png"),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Fried Chicken Burger", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),
              Row(children: [
                Icon(Icons.star, size: 25,color: Color(0xffFF9633),),
                SizedBox(width: 3,),
                Text("4.5", style: TextStyle(fontSize: 20, color: Colors.grey),),
                SizedBox(width: 3,),
                Text("-", style: TextStyle(fontSize: 30, color: Colors.grey),),
                SizedBox(width: 3,),
                Text("14 mins", style: TextStyle(fontSize: 20, color: Colors.grey),),
              ],),
              SizedBox(height: 15,),
              Text("Indulge in our crispy and savory Fried Chicken Burger, \nmade with a juicy chicken patty, hand-breaded and \ndeep-fried to perfection, served on a warm bun with \nlettuce, tomato, and a creamy sauce.",
                style: TextStyle(
                    fontSize: 17,
                    height: 1.7,
                    color: Colors.grey
                ),),
              SizedBox(height: 30,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spicy", style: TextStyle(
                        fontSize: 17,
                      ),),
                      ProgressBar(),
                      Row(
                        children: [
                          Text("Mild", style: TextStyle(color: Color(0xff55CF53)),),
                          SizedBox(width: 120,),
                          Text("Hot", style: TextStyle(color: Color(0xffEF2A39)),),
                        ],)
                    ],),
                  SizedBox(width: 60,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Portion", style: TextStyle(
                        fontSize: 17,
                      ),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              _decrementCounter();
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Color(0xffEF2A39),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.remove, color: Colors.white,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('$_counter', style: TextStyle(
                              fontSize: 22
                          ),),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              _incrementCounter();
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Color(0xffEF2A39),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.add, color: Colors.white,),
                            ),
                          ),
                        ],)
                    ],),
                ],),
              SizedBox(height: 60,),
              Row(children: [
                Container(
                  height: 70,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xffEF2A39),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 8, // Étalement de l'ombre
                        blurRadius: 13, // Flou de l'ombre
                        offset: Offset(0, 3), // Décalage de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: Center(child: Text("\$8.24", style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),)),
                ),
                SizedBox(width: 30,),
                Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff3C2F2F),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 8, // Étalement de l'ombre
                        blurRadius: 13, // Flou de l'ombre
                        offset: Offset(0, 3), // Décalage de l'ombre (x, y)
                      ),
                    ],
                  ),
                  child: Center(child: Text("ORDER NOW", style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),)),
                ),
              ],)
            ],),
        ),
      ),
    );
  }
}

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double _currentValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 180, // Ajustez cette valeur pour changer la longueur du Slider
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.red,
              inactiveTrackColor: Color(0xffF1F2F3),
              trackShape: RoundedRectSliderTrackShape(),
              trackHeight: 8.0,
              thumbColor: Colors.red,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.5,),
              overlayColor: Colors.red.withAlpha(32),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
              tickMarkShape: RoundSliderTickMarkShape(),
              activeTickMarkColor: Colors.red,
              inactiveTickMarkColor: Colors.grey,
              valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.red,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Slider(
              value: _currentValue,
              min: 0.0,
              max: 1.0,
              divisions: 100,
              //label: (_currentValue * 100).round().toString() + "%",
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ),
        ),
        // SizedBox(height: 10),
        // Text(
        //   "${(_currentValue * 100).round()}%",
        //   style: TextStyle(fontSize: 20),
        // ),
      ],
    );
  }
}
