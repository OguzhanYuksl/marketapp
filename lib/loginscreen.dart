import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen>{
  bool _usingcondition = false;
  bool _permission = false;

  Widget _buildbtn(){
    return  Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        child: RaisedButton(
            elevation: 5.0,
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xFF3b5998),
            child: Text("Facebook ile Bağlan",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),),
            onPressed: () => print("Facebook Button Pressed.")
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Color(0xFF592cb4),
          title: Text("Üyelik",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.only(
              top:10,
              left:20,
              right: 20,
              bottom: 20),
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _buildbtn(),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                              hintText: '+90',
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 2,
                        child: TextFormField(style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                            hintText: 'Cep Telefonu',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          hintText: 'Şifre (en az 4 karakter)',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          hintText: 'Ad Soyad',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                          hintText: 'E-Posta',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                          ),
                        ),
                      ),
                    ],
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
                            fontSize: 12,
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
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: RaisedButton(
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Color(0xFF592cb4),
                          child: Text("Üye ol",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),),
                          onPressed: () => print("Facebook Button Pressed.")
                      )
                  )
                ],)
          )
      ),
    );
  }
}