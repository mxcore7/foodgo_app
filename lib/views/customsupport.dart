import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'home.dart';

class customersupport extends StatefulWidget {
  const customersupport({super.key});

  @override
  State<customersupport> createState() => _customersupportState();
}

class _customersupportState extends State<customersupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.notes, size: 30, color: Colors.black,),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20,),
            Container(
              height: 650,
              width: 350,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  ReceiveMessage(text: "Hi, how can I help you?"),
                  SendMessage(text: "Hello, I ordered two fried chicken burgers. can I know how much time it will get to arrive?"),
                  ReceiveMessage(text: "Ok, please let me check!"),
                  SendMessage(text: "Sure..."),
                  ReceiveMessage(text: "It’ll get 25 minutes to arrive to your address"),
                  Center(
                    child: Text("26 minutes ago", style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontSize: 13
                    ),),
                  ),
                  SendMessage(text: "Ok, thanks you for your support")

                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                          spreadRadius: 9, // Étalement de l'ombre
                          blurRadius: 15, // Flou de l'ombre
                          offset: Offset(1,9), // Décalage de l'ombre (x, y)
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          SizedBox(width:15 ,),
                          Expanded(
                            child: TextField(
                              style:TextStyle(fontSize: 25)
                              ,decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type here...",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),

                              ),
                            ),
                          ),
                          // Uncomment and adjust this part if you want to add a send button
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xffEE2A39),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(IconlyBold.send, color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,)
          ],
          ),
        ),
      ));
  }
}



class ReceiveMessage extends StatelessWidget {
  final String text;


  const ReceiveMessage({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff3C2F2F)
            ),
            child: Center(child: Icon(Icons.person_outlined, size: 25,color: Colors.white,)),
          ),
          SizedBox(width: 10,),
          Container(
            width: 225,
            decoration: BoxDecoration(
              color: Color(0xffF3F4F6),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(this.text, style: TextStyle(
                  color: Color(0xff3C2F2F),
                  fontSize: 20
                ),),
              ),
            ),
          )
        ],),

      ),
    );
  }
}


class SendMessage extends StatelessWidget {
  final String text;


  const SendMessage({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 225,
              decoration: BoxDecoration(
                  color: Color(0xffEF2A39),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(this.text, style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                  ),
                    softWrap: true,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff3C2F2F),
              image: DecorationImage(image: AssetImage("assets/image/mapp.jpg"),
                fit: BoxFit.fill
              )
            ),
          ),

        ],),

      ),
    );
  }
}