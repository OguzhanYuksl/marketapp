
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'sign_in.dart';
import 'style.dart';
Widget ProfilePage(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(top:10),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignIn()),
              );
            },
            child: Container(
              color: Colors.grey.shade200,
              child: Container(
                height: 60,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0,right:5,left:5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.person,
                                color: kodmozRenk),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Giriş Yap",
                                        style: Profil),
                                    Icon(Icons.keyboard_arrow_right,
                                      color: kodmozRenk,)
                                  ],
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            color: Colors.grey.shade200,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,right:5,left:5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.place,
                              color: kodmozRenk),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Adreslerim",
                                      style: Profil),
                                  Icon(Icons.keyboard_arrow_right,
                                    color: kodmozRenk,)
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ), Container(
            color: Colors.grey.shade200,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,right:5,left:5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.help_outline,
                              color: kodmozRenk),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Yardım",
                                      style: Profil),
                                  Icon(Icons.keyboard_arrow_right,
                                    color: kodmozRenk,)
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ), Container(
            color: Colors.grey.shade200,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,right:5,left:5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.favorite,
                              color: kodmozRenk),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Favori Ürünlerim",
                                      style: Profil),
                                  Icon(Icons.keyboard_arrow_right,
                                    color: kodmozRenk,)
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: SizedBox(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text('Language-Dil',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                height: 30,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey.shade200,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,right:5,left:5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Favori Ürünlerim",
                                      style: Profil),
                                  Icon(Icons.keyboard_arrow_right,
                                    color: kodmozRenk,)
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: SizedBox(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text('Versiyon',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                height: 30,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey.shade200,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,right:5,left:5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Versiyon",
                                      style: Profil),
                                  Text("1.0.0",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),),
                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'style.dart';

Widget ProfilePage(BuildContext context){
      return Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              // GİRİŞ YAP ********
              FlatButton(
                color: Colors.white,
                onPressed: (){
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 14),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person,
                      color: kodmozRenk ,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Giriş Yap',
                      style: Profil,),
                      Container(
                        margin: EdgeInsets.fromLTRB(216, 0, 0, 0),
                      child: Icon(Icons.keyboard_arrow_right,
                      color: kodmozRenk,),
                      )
                    ],

                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  height: 30,
                  color: Colors.grey[200],
                ),

              ),
              // ADRESLERİM *************
              FlatButton(
                color: Colors.white,
                onPressed: (){
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 14),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.place,
                        color: kodmozRenk ,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Adreslerim',
                        style: Profil,),
                      Container(
                        margin: EdgeInsets.fromLTRB(202, 0, 0, 0),
                        child: Icon(Icons.keyboard_arrow_right,
                          color: kodmozRenk,),
                      )
                    ],

                  ),
                ),
              ),
              // YARDIM ************
              FlatButton(
                color: Colors.white,
                onPressed: (){
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 14),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.help_outline,
                        color: kodmozRenk,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Yardım',
                        style: Profil,),
                      Container(
                        margin: EdgeInsets.fromLTRB(228, 0, 0, 0),
                        child: Icon(Icons.keyboard_arrow_right,
                          color: kodmozRenk,),
                      )
                    ],

                  ),
                ),
              ),
              // FAVORİ ÜRÜNLERİM ********
              FlatButton(
                color: Colors.white,
                onPressed: (){
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 14),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.favorite,
                        color: kodmozRenk,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Favori Ürünlerim',
                        style: Profil,),
                      Container(
                        margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
                        child: Icon(Icons.keyboard_arrow_right,
                          color: kodmozRenk,),
                      )
                    ],

                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  margin: EdgeInsets.fromLTRB(6, 0, 0, 6),
                  alignment: Alignment.bottomLeft,
                  child: Text('Language-Dil',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
                  height: 40,
                  color:Colors.grey[200],
                ),
              ),
              // LANGUAGE ********
              FlatButton(
                color: Colors.white,
                onPressed: (){
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 14),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text('Türkçe',
                        style: Profil,),
                      Container(
                        margin: EdgeInsets.fromLTRB(253, 0, 0, 0),
                        child: Icon(Icons.keyboard_arrow_right,
                          color: kodmozRenk,),
                      )
                    ],

                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  margin: EdgeInsets.fromLTRB(6, 0, 0, 6),
                  alignment: Alignment.bottomLeft,
                  child: Text('Versiyon',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  height: 40,
                  color:Colors.grey[200],
                ),
              ),
              //VERSİYON ********
              FlatButton(
                color: Colors.white,
                onPressed: (){
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 17, 0, 14),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text('1.0.0',
                        style: Profil,),
                      Container(
                        margin: EdgeInsets.fromLTRB(264, 0, 0, 0),
                        child: Icon(Icons.keyboard_arrow_right,
                          color: kodmozRenk,),
                      )
                    ],

                  ),
                ),
              ),


            ],

          ),
        ),
      );
}

 */