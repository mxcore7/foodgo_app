import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'home.dart';

class profile extends StatefulWidget {
  const profile({super.key});


  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: -5,
                left: -90,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/image/image1.png"))
                  ),
                ),
              ),
              Positioned(
                top: -5,
                left: 310,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/image/image1.png"))
                  ),
                ),
              ),
              Positioned(
                top: -20,
                left: -10,
                child: Container(
                  width: 400,
                  height: 200,
                    color:  Colors.red.withOpacity(0.7)
              ),
                ),
              Positioned(
                top: 17,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                        },
                        child: Icon(Icons.arrow_back, size: 30, color: Colors.white,)),
                  ],)
                ),
              Positioned(
                top: 17,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.settings, size: 30, color: Colors.white,)
                  ],)
                ),
              Positioned(
                top: 145,
                left: 0,
                child: Container(
                  width: 389,
                  height: 700,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                        topLeft: Radius.circular(35)
                      )
                    ),
                  child: Column(
                    children: [
                    Container(
                      height: 90,
                      width: 50,
                    ),
                    Container(
                      height: 70,
                      width: 340,
                      child: Stack(
                        children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: 70,
                            width: 340,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.red, fontSize: 50,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: -3,
                            left: 25,
                            child: Container(
                                color: Colors.white,
                                child: Text("Name", style: TextStyle(
                                  color: Colors.grey
                                ),)
                            )
                        )
                      ],),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 70,
                      width: 340,
                      child: Stack(
                        children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: 70,
                            width: 340,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.red, fontSize: 50,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: -3,
                            left: 25,
                            child: Container(
                                color: Colors.white,
                                child: Text("Email", style: TextStyle(
                                  color: Colors.grey
                                ),)
                            )
                        )
                      ],),
                    ),
                      SizedBox(height: 15,),
                    Container(
                      height: 70,
                      width: 340,
                      child: Stack(
                        children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: 70,
                            width: 340,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.red, fontSize: 50,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: -3,
                            left: 25,
                            child: Container(
                                color: Colors.white,
                                child: Text("Delivery address", style: TextStyle(
                                  color: Colors.grey
                                ),)
                            )
                        )
                      ],),
                    ),
                      SizedBox(height: 15,),
                    Container(
                      height: 70,
                      width: 340,
                      child: Stack(
                        children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            height: 70,
                            width: 340,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.red, fontSize: 50,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: -3,
                            left: 25,
                            child: Container(
                                color: Colors.white,
                                child: Text("Password", style: TextStyle(
                                  color: Colors.grey
                                ),)
                            )
                        )
                      ],),
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: Colors.grey.withOpacity(0.2)
                          )
                        )
                      ),

                    ),
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Payment Details", style: TextStyle(
                            color: Colors.grey.withOpacity(0.8),
                            fontSize: 20,
                          ),),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey.withOpacity(0.8))
                        ],),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Order history", style: TextStyle(
                            color: Colors.grey.withOpacity(0.8),
                            fontSize: 20,
                          ),),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey.withOpacity(0.8))
                        ],),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Container(
                            height: 70,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Color(0xff3C2F2F),
                              borderRadius: BorderRadius.circular(18),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Edit profil", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(width: 10,),
                                  Icon(IconlyLight.edit_square, color: Colors.white,)
                                ],
                              ),
                            ),
                          Container(
                            height: 70,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Color(0xffEF2A39),
                              width: 3)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Log out", style: TextStyle(
                                    color: Color(0xffEF2A39),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10,),
                                Icon(Icons.logout_rounded, color: Color(0xffEF2A39),)
                              ],
                            ),
                          ),
                        ],),
                      )
                  ],),
              ),
                ),
              Positioned(
                top: 70,
                left: 135,
                child: Container(
                  width: 130,
                  height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEF2A39),
                      width: 3),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/image/image8.png"),
                      fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffEF2A39).withOpacity(0.2), // Couleur de l'ombre
                          spreadRadius: 7, // Étalement de l'ombre
                          blurRadius: 13, // Flou de l'ombre
                          offset: Offset(0, 3), // Décalage de l'ombre (x, y)
                        ),
                      ],
                    ),
              ),
                ),
            ],
          )
        ),
    );
  }
}
