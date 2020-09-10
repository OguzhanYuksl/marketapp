import 'package:flutter/material.dart';
import 'package:flutter2001/style.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();

}
class _SecondPageState extends State<SecondPage>{
  bool _usingcondition = false;
  bool _permission = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: kodmozRenk,
        title: Text('Üye Ol',
          style: TextStyle(
            fontFamily: 'Avenir',
            color: kodmozBeyaz,

          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 54.0,
              margin: EdgeInsets.fromLTRB(30, 60, 30, 10),
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
                    color: Colors.white,
                    fontFamily: 'Avenir',
                  ),),
                color: Colors.indigo,
              ),
            ), // Facebook ile Bağlan
            Container(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10.0),
                height: 50.0,
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
                      width: 8.0,
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
            ), //**Telefon Kodu
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
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

            ), //*** Şifre ***
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  new Flexible(child: TextField(
                    decoration: InputDecoration(
                        hintText: ('Ad Soyad'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kodmozRenk),
                        )
                    ),
                  ),)
                ],
              ),

            ), // *** Ad Soyad ***
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  new Flexible(child: TextField(
                    decoration: InputDecoration(
                        hintText: ('E-Posta'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kodmozRenk),
                        )
                    ),
                  ),)
                ],
              ),

            ),
            Container(
              child: Row(
                children: <Widget>[
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.grey),
                    child: Checkbox(value: _usingcondition,
                        checkColor: Color(0xFF660099),
                        activeColor: Colors.grey.shade200,
                        onChanged: (value) {
                          setState(() {
                            _usingcondition = value;
                          });
                        }
                    ),
                  ),
                  Text("Kullanım koşullarını okudum ve kabul ediyorum",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),)
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.grey),
                    child: Checkbox(value: _permission,
                        checkColor: Color(0xFF660099),
                        activeColor: Colors.grey.shade200,
                        onChanged: (value) {
                          setState(() {
                            _permission = value;
                          });
                        }
                    ),
                  ),
                  Text("KVKK Aydınlatma Metni kapsamında verilerimin\nbana özel teklifler ve kampanyalar için\nkullanılmasına, tarafıma ticari elektronik ileti\ngönderilmesine izin veriyorum.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),)
                ],
              ),
            ),// *** E-posta ***
            Container(
              width: double.infinity,
              height: 54.0,
              margin: EdgeInsets.fromLTRB(25.0, 100, 25.0, 0),
              child: RaisedButton(
                onPressed: ()
                {

                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(13.0),
                    side: BorderSide(color: kodmozRenk)
                ),
                child: Text('Üye Ol',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    color: Colors.black,
                  ),),
                color: Colors.white,
              ),
            ), // Üye Ol Butonu


          ],
        ),
      ),
    );
  }
}

