import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter2001/sign_up.dart';
import 'package:flutter2001/style.dart';
import 'forgot_password.dart';
import 'package:flutter2001/forgot_password.dart';


class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: kodmozRenk,
        title: Text('Giriş Yap',
          style: TextStyle(
            fontFamily: 'Avenir',

          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(30, 80, 30, 10),
              width: double.infinity,
              height: 54.0,
              child: RaisedButton(
                onPressed: ()
                {

                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(13.0),
                    side: BorderSide(color: Colors.blue)
                ),
                child: Text('Facebook İle Bağlan',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    color: Colors.white,
                  ),),
                color: Colors.indigo,
              ),
            ), //Facebook İle Bağlan
            Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                height: 70.0,
                child:Row(
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: ('Telefon Kodu'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kodmozRenk),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: ('Cep Telefonu'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kodmozRenk),
                            )
                        ),
                      ),
                    ),


                  ],
                )
            ), // Telefon kodu
            Container(
              height: 70,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 40),
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  new Flexible(child: TextField(
                    decoration: InputDecoration(
                        hintText: ('Şifre (en az 4 karakter)'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kodmozRenk),
                        )
                    ),
                  ),)
                ],
              ),

            ), //Şifre
            Container(
              width: double.infinity,
              height: 54.0,
              margin: EdgeInsets.fromLTRB(20, 40, 20, 30),
              child: RaisedButton(
                onPressed: ()
                {

                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(13.0),
                    side: BorderSide(color: kodmozBeyaz)
                ),
                child: Text('Giriş Yap',
                  style: TextStyle(
                    color: kodmozBeyaz,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
                color: kodmozRenk,
              ),
            ), // Giriş Yap Buton
            FlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassword()),
                );

              },
              child:Text('Şifremi Unuttum',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 13.0,
                  color: Colors.grey[500],)


              ),),
            Container(
              width: double.infinity,
              height: 54.0,
              margin: EdgeInsets.fromLTRB(25.0, 190, 25.0, 0),
              child: RaisedButton(
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage() ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(13.0),
                    side: BorderSide(color: kodmozRenk)
                ),
                child: Text('Üye Ol',
                  style: TextStyle(
                    color: kodmozRenk,
                    fontWeight: FontWeight.bold,
                  ),),
                color: Colors.white,
              ),
            ),
            //Şifremi Unuttum

          ],
        ),
      ),
    );
  }
}

