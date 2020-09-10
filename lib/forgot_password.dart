import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';

class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kodmozRenk,
        title: Text('Şifremi Unuttum',
        style: TextStyle(
          fontFamily: 'Manrope',
        ),),
      ),
    body: Center(
      child:Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10.0),
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10.0),
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
          ), // CEP TELEFONU
          Container(
            width: double.infinity,
            height: 54.0,
            margin: EdgeInsets.all(25.0),
            child: RaisedButton(
              onPressed: ()
              {

              },
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(13.0),
                  side: BorderSide(color: Colors.grey[400])
              ),
              child: Text('Kod Gönder',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Avenir',
                ),),
              color: kodmozRenk,
            ),
          ),// KOD GÖNDER
        ],
      ),
    ),
    );
  }
}