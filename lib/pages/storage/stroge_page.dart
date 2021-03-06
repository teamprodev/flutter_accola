import 'package:accoola/pages/Summa/Sum_Page.dart';
import 'package:accoola/pages/login/login_page.dart';
import 'package:flutter/material.dart';


class strogePage extends StatefulWidget {
  @override
  _strogePageState createState() => _strogePageState();
}

class _strogePageState extends State<strogePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF5954D3).withOpacity(0.8),
        title: Text(
          "Склад",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height * 0.2,
                margin: EdgeInsets.only(
                    left: size.width * 0.05, right: size.width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.04),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.29),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Товары на складе",
                    style: TextStyle(fontSize: size.width*0.07, fontWeight: FontWeight.bold, color: Color(0xff6D69CF)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SumPage()));
                },
                child: Container(
                  width: size.width,
                  height: size.height * 0.2,
                  margin: EdgeInsets.only(
                      top: size.width * 0.1,
                      left: size.width * 0.05,
                      right: size.width * 0.05),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.04),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.29),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Сырье и материалы",
                      style: TextStyle(fontSize: size.width*0.07, fontWeight: FontWeight.bold, color: Color(0xff6D69CF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}