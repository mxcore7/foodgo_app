
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
              SizedBox(height: 50,),
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
                  borderRadius: BorderRadius.circular(25)
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
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                  )
                ],),
              )

        ]),
      ),
    ));
  }
}




