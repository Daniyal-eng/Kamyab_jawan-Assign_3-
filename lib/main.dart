import 'package:flutter/material.dart';
//import 'ProductList.dart';
//import 'historydata.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ecommerce Assignment',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Ecom App UI",style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications,size: 30,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://cdn1.iconfinder.com/data/icons/essential-21/128/User-512.png'),
                    )
                  ),
                ),
                Container(
                    height: 200,
                    width: 190,
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Align(
                        alignment: Alignment.topLeft,
                          child: Text("Daniyal Anjum",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w800),)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("daniyalanjum172@gmail.com",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.w800),)),
                      SizedBox(height: 20,),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Logout",style: TextStyle(fontSize: 15,color: Colors.purple),)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("ACCOUNT INFORMATION",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w800),)),
            ),
            SizedBox(height: 15,),
            myText("Full Name"),
            myTextField("User"),
            SizedBox(height: 5,),
            myText("Email"),
            myTextField("user@gmail.com"),
            SizedBox(height: 15,),
            myText("Phone"),
            myTextField("+0900-786 01"),
            SizedBox(height: 15,),
            myText("Address"),
            myTextField("Shadman Town , Karachi"),
            SizedBox(height: 15,),
            myText("Gender"),
            myTextField("Male"),
            SizedBox(height: 15,),
            myText("Date of Birth"),
            myTextField("July 10 , 1999"),
          ],
        ),
      ),
    );
  }
}

Widget myText(String text){
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Align(
      alignment: Alignment.topLeft,
        child: Text(text,style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w800),)),
  );
}
Widget myTextField(String hintText){
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          hintStyle: TextStyle(fontSize: 18,color: Colors.grey),
          suffixIcon: Icon(Icons.edit),
        ),
      ),
    ),
  );
}