import 'dart:convert';

import 'package:accoola/contsant.dart';
import 'package:accoola/pages/sum_page115.dart';
import 'package:accoola/pages/sum_page116.dart';
import 'package:accoola/repositories/111/repository.dart';
import 'package:accoola/service/models/resp113.dart';
import 'package:accoola/service/models/resp114.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StoragePage extends StatefulWidget {
  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final _repository = Repository111();

  @override
  Widget build(BuildContext context) {
    String dateNow = DateFormat('dd.MM.yyyy').format(DateTime.now());

    Resp113 resp113 = Resp113();
    Resp114 resp114 = Resp114();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor.withOpacity(0.8),
        title: Text(
          'Склад',
          style: TextStyle(fontSize: size.width * 0.065),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FutureBuilder(
                  future: _repository.getResult(
                      login: LOGIN,
                      code: '113',
                      password: PASSWORD,
                      date: dateNow,
                      dateK: '09.03.2020',
                      dateN: '09.03.2020'),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                              Theme.of(context).accentColor),
                        ),
                      );
                    }
                    resp113 = Resp113.fromJson(jsonDecode(snapshot.data));

                    print('data[0].datum ==== ' + resp113.data[0].empty);
                    print('data[0].datum ==== ' + resp113.data[0].datum);
                    if (resp113.data[0].empty != null &&
                        resp113.data[0].datum != null) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SumPage115()),
                          );
                        },
                        child: Container(
                          width: size.width,
                          height: size.height * 0.2,
                          margin: EdgeInsets.only(
                              left: size.width * 0.05,
                              right: size.width * 0.05),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.04),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 15.0),
                                Text(
                                  "Товары на складе",
                                  style: TextStyle(
                                      fontSize: size.width * 0.07,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 15.0),
                                Text(
                                  '${resp113.data[0].datum} сум',
                                  style: TextStyle(
                                      fontSize: size.width * 0.07,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SumPage115()),
                          );
                        },
                        child: Container(
                          width: size.width,
                          height: size.height * 0.2,
                          margin: EdgeInsets.only(
                              left: size.width * 0.05,
                              right: size.width * 0.05),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.04),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Товары на складе",
                              style: TextStyle(
                                  fontSize: size.width * 0.07,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }
                  }),
              SizedBox(
                height: 20.0,
              ),
              FutureBuilder(
                  future: _repository.getResult(
                      login: LOGIN,
                      code: '114',
                      password: PASSWORD,
                      date: '09.05.2020',
                      dateK: '31.03.2021',
                      dateN: '01.11.2020'),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                              Theme.of(context).accentColor),
                        ),
                      );
                    }
                    resp114 = Resp114.fromJson(jsonDecode(snapshot.data));
                    if (resp114.data[0].empty != null &&
                        resp114.data[0].datum != null) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SumPage116()),
                          );
                        },
                        child: Container(
                          width: size.width,
                          height: size.height * 0.2,
                          margin: EdgeInsets.only(
                              left: size.width * 0.05,
                              right: size.width * 0.05),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.04),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 15.0),
                                Text(
                                  "Сырье и материалы",
                                  style: TextStyle(
                                      fontSize: size.width * 0.07,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 15.0),
                                Text(
                                  '${resp114.data[0].empty} сум',
                                  style: TextStyle(
                                      fontSize: size.width * 0.07,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SumPage116()),
                          );
                        },
                        child: Container(
                          width: size.width,
                          height: size.height * 0.2,
                          margin: EdgeInsets.only(
                              left: size.width * 0.05,
                              right: size.width * 0.05),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.04),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Сырье и материалы",
                                  style: TextStyle(
                                      fontSize: size.width * 0.07,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
