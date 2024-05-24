import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodgo/views/produit1.dart';
import 'package:foodgo/views/produit2.dart';
import 'package:foodgo/views/produit3.dart';
import 'package:foodgo/views/produit4.dart';
import 'package:foodgo/views/produit5.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: SingleChildScrollView(
        child: Container(
          width: 60, // Largeur du FloatingActionButton
          height: 60, // Hauteur du FloatingActionButton
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                  spreadRadius: 8, // Étalement de l'ombre
                  blurRadius: 10, // Flou de l'ombre
                  offset: Offset(1, 1), // Décalage de l'ombre (x, y)
                ),
              ],
              borderRadius: BorderRadius.circular(50)
            ),
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => produit5()));
                },
                child: Icon(Icons.add, color: Colors.white, size: 35, grade: 10,),
                backgroundColor: Color(0xffEF2A39),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Bordures arrondies
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: Container(
        height: 70,
        child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            color: Color(0xffEF2A39),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(Icons.home, size: 30,color: Colors.white),
                Icon(Icons.person_2_outlined, size: 30,color: Colors.white),
                SizedBox(width: 25,),
                Icon(IconlyBold.chat, size: 30,color: Colors.white),
                Icon(Icons.favorite_outlined, size: 30,color: Colors.white),
              ],),
            ),
          ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  "Foodgo",
                  style: GoogleFonts.lobsterTextTheme().displayLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 55,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/image/image8.png"),
                    fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),

              ],),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Order your favourite food!", style: TextStyle(
                      fontSize: 25,
                    color: Color(0xff6A6A6A)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Couleur de l'ombre
                        spreadRadius: 1, // Étalement de l'ombre
                        blurRadius: 1, // Flou de l'ombre
                        offset: Offset(0, 3), // Décalage de l'ombre (x, y)
                      ),
                    ],
                    color: Colors.white
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                      icon: Icon(Icons.search, size: 45,)
                    ),

                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Color(0xffEE2A39),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(IconlyBold.filter, color: Colors.white,),
                )
              ],),
            ),
            SizedBox(height: 5,),
            Container(
              height: 60,
              width: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffEE2A39),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8), // Couleur de l'ombre
                            spreadRadius: 1, // Étalement de l'ombre
                            blurRadius: 5, // Flou de l'ombre
                            offset: Offset(0, 3), // Décalage de l'ombre (x, y)
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text("All", style: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                          ),)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    child: Container(
                      height: 10,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Combos", style: TextStyle(
                            color: Colors.black26,
                            fontSize: 17
                          ),)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    child: Container(
                      height: 10,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Classic", style: TextStyle(
                            color: Colors.black26,
                            fontSize: 17
                          ),)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    child: Container(
                      height: 10,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Slide", style: TextStyle(
                            color: Colors.black26,
                            fontSize: 17
                          ),)
                      ),
                    ),
                  ),
              ],),
            ),
            Container(
              height: 600,
              width: 350,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: [
                  FoodMenu(
                    Tiltetext: "Cheeseburger",
                    image: "assets/image/food1.png",
                    Subtitle: "Wendy's Burger",
                    Notetext: "4.9",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => produit1()));
                    },
                  ),
                  FoodMenu(
                    Tiltetext: "Hamburger ",
                    image: "assets/image/food2.png",
                    Subtitle: "Veggie Burger",
                    Notetext: "4.8",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>produit2()));
                      print("Action spécifique pour l'image 2");
                    },
                  ),
                  FoodMenu(
                    Tiltetext: "Hamburger",
                    image: "assets/image/food3.png",
                    Subtitle: "Chicken Burger",
                    Notetext: "4.6",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>produit3()));
                      print("Action spécifique pour l'image 3");
                    },
                  ),
                  FoodMenu(
                    Tiltetext: "Cheeseburger",
                    image: "assets/image/food4.png",
                    Subtitle: "Fried Chicken Burger",
                    Notetext: "4.5",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>produit4()));
                      print("Action spécifique pour l'image 4");
                    },
                  ),
                ],
              ),
            ),

          ],),
        ),
      ),

    );
  }
}


//Contenaire pour afficher la miniature de chaque menu
class FoodMenu extends StatefulWidget {
  final String Tiltetext;
  final String Subtitle;
  final String image;
  final String Notetext;
  final VoidCallback? onTap;

  const FoodMenu({
    required this.Tiltetext,
    required this.image,
    required this.Subtitle,
    required this.Notetext,
    required this.onTap,
  });

  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 2),
            InkWell(
              onTap: widget.onTap,
              child: Container(
                height: 135,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 1),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      widget.Tiltetext,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.Subtitle,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      ),
                    ),
                    //SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.1),
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 20, color: Color(0xffFF9633)),
                          Text(
                            widget.Notetext,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              size: 20,
                              color: isFavorite ? Colors.red : Colors.black,
                            ),
                            onPressed: toggleFavorite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
