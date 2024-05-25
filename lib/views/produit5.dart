
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              SizedBox(height: 10,),
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
              SizedBox(height: 25,),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 0),
                      height: 260,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/image9.png"),
                              fit: BoxFit.cover,
                          ),
                      ),
                                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                    Row(
                      children: [
                      Text("Customize ",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      Text("Your Burger   ",style: TextStyle(
                        fontSize: 20,
                      ),),
                    ],),
                      Text("to Your Tastes. Ultimate \nExperience",style: TextStyle(
                        fontSize: 20,
                      )),
                      SizedBox(height: 25,),
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
                      SizedBox(height: 40,),
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
                              SizedBox(width: 45,),
                              Text('$_counter', style: TextStyle(
                                  fontSize: 22
                              ),),
                              SizedBox(width: 45,),
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
                        ],)
                  ],)
                ]
              ),


              SizedBox(height: 30,),

              Text("Toppings", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5,),
              Container(
                height: 95,
                width: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Toppings(text: "Tomato", image: "assets/image/tomate.png"),
                    Toppings(text: "Onions", image: "assets/image/onions.png"),
                    Toppings(text: "Pickels", image: "assets/image/concombre.png"),
                    Toppings(text: "Bacons", image: "assets/image/becon.png"),
                  ],
                ),
              ),
              SizedBox(height: 30,),

              Text("Side Options", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 5,),

              Container(
                height: 95,
                width: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Toppings(text: "Fries", image: "assets/image/frittes.png"),
                    Toppings(text: "Coleslaw", image: "assets/image/pop.png"),
                    Toppings(text: "Salad", image: "assets/image/salade.png"),
                    Toppings(text: "Onion", image: "assets/image/onion.png"),
                  ],
                ),
              ),
              SizedBox(height: 80,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    Text("Totals", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    Row(children: [
                       Text("\$", style: TextStyle(
                           color: Color(0xffEF2A39),
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                       Text("16.49", style: TextStyle(
                          color: Color(0xff3C2F2F),
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),),
                    ]
                    ),
                  ]
                ),
                SizedBox(width: 30,),
                Container(
                  height: 70,
                  width: 200,
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
                  child: Center(child: Text("ORDER NOW", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
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


class Toppings extends StatelessWidget {
  final String text;
  final String image;


  const Toppings({
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      child: Container(
          height: 95,
          width: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff3C2F2F),
              border: Border.all(
                color: Colors.grey,
                width: 0.1,
              )
          ),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(this.text, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  Container(
                    height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffEF2A39)
                      ),
                      child: Center(
                          child: Icon(Icons.add, size: 10,
                            color: Colors.white,)))
                ],),
              )
            ],
          ),
        ),
    );
  }
}

class SideOptions extends StatelessWidget {
  final String text;
  final String image;


  const SideOptions({
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      child: Container(
        height: 95,
        width: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff3C2F2F),
            border: Border.all(
              color: Colors.grey,
              width: 0.1,
            )
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(this.text, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffEF2A39)
                      ),
                      child: Center(
                          child: Icon(Icons.add, size: 10,
                            color: Colors.white,)))
                ],),
            )
          ],
        ),
      ),
    );
  }
}