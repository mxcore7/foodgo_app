
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodgo/views/payment.dart';
import 'package:iconly/iconly.dart';

import 'home.dart';

class payment extends StatefulWidget {
  const payment({super.key});


  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {

  void showPopupMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350,
          width: 200,
          decoration: BoxDecoration(
            color: Color(0xffD2D2D2)
          ),
          child: AlertDialog(
            backgroundColor: Color(0xffF8F8F8),
            title: Center(
              child: Column(
                children: [
                  Icon(Icons.check_circle, size: 100, color: Color(0xffEF2A39),),
                  SizedBox(height: 15,),
                  Text('Success !', style: TextStyle(
                    color: Color(0xffEF2A39),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            content: Text('Your payment was successful.\nA receipt for this purchase has \nbeen sent to your email.',
            textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 20,
            ),),
            actions: <Widget>[
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                  },
                  child: Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Go Back", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),)),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
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
              Row(children: [
                Text("Order summary", style: TextStyle(
                    color: Color(0xff3C2F2F),
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),)
              ],),
              SizedBox(height: 15,),
              Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(

                  border: Border(bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ))
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Oder", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                    Text("\$16.48", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Taxes", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                    Text("\$0.3", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Delivery fees", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                    Text("\$1.5", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  ],),
                ],),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(
                      color: Color(0xff3C2F2F),
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
                  Text("\$18.19", style: TextStyle(
                      color: Color(0xff3C2F2F),
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),),
                ],),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Estimated delivery time:", style: TextStyle(
                      color: Color(0xff3C2F2F),
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),),
                  Text("15 - 30 mins", style: TextStyle(
                      color: Color(0xff3C2F2F),
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                  ),),
                ],),
              SizedBox(height: 30,),
              Row(children: [
                Text("Payment methods", style: TextStyle(
                    color: Color(0xff3C2F2F),
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),)
              ],),
              SizedBox(height: 25,),
              Container(
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xff3C2F2F),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                      spreadRadius: 10, // Étalement de l'ombre
                      blurRadius: 13, // Flou de l'ombre
                      offset: Offset(1, 2), // Décalage de l'ombre (x, y)
                    ),
                  ],
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 50,
                      width: 75,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/mastercard.png"),
                        fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Credit card", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),),
                    Text("5105 **** **** 0505", style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff6F6B6B)
                    ),),

                  ],),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            color: Color(0xff3C2F2F),
                          ),
                          child: Icon(Icons.circle, size: 15,color: Colors.white,),
                        ),
                      ),
                    ),
                  )
                ],),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xffCACBCD),
                  borderRadius: BorderRadius.circular(25),

                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/visacard.png"),
                              fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Debit card", style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff3C2F2F)
                      ),),
                      Text("4566 **** **** 0505", style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6F6B6B)
                      ),),

                    ],),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D3D4),
                          ),
                        ),
                      ),
                    ),
                  )
                ],),
              ),
              SizedBox(height: 35,),
              Row(children: [
                Container(
                  height: 20,
                  width:  20,
                  decoration: BoxDecoration(
                    color: Color(0xffEF2A39),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Icon(Icons.check, size: 15,color: Colors.white,),
                ),
                SizedBox(width: 5,),
                Text("Save card details for future payments", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
                ),)
              ],),
              SizedBox(height: 55,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Totals", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                        Row(children: [
                          Text("\$", style: TextStyle(
                              color: Color(0xffEF2A39),
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),),
                          Text("18.19", style: TextStyle(
                              color: Color(0xff3C2F2F),
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),),
                        ]
                        ),
                      ]
                  ),
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                     showPopupMessage(context);
                    },
                    child: Container(
                      height: 70,
                      width: 150,
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
                      child: Center(child: Text("Pay Now", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)),
                    ),
                  ),
                ],)

        ]),
      ),
    ));
  }
}




