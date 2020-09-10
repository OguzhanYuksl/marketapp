import 'package:flutter/material.dart';
import 'package:flutter2001/homepage.dart';
import 'sign_up.dart';
import 'sign_in.dart';
import 'homepage.dart';
import 'style.dart';

void main() {
  runApp(MaterialApp(
    title: 'Getir',
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: SafeArea(
        bottom: true,
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kodmozRenk,
            title: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 80,
              width: double.infinity,
            ),
          ),
          // GETİR LOGO
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,


                children: <Widget>[
                  CircleAvatar(

                    radius: 160,
                    backgroundImage: AssetImage('assets/images/moto.gif'),
                  ),
                  FlatButton(
                    child:Text('Üye Olmadan Devam Et ',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontFamily: 'Avenir',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,)



                    ),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())
                        );
                    },
                  ), // Üye Olmadan Devam Et
                  Container(
                    height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.grey)
                        ),
                        highlightColor: Colors.yellow,
                        onPressed: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondPage()),
                          );
                        },
                        child: Text('Üye Ol'
                          ,
                          style: Buton,
                        ),
                        color: kodmozRenk,


                      ) // Üye Ol

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    alignment: Alignment.bottomCenter,
                    child: FlatButton(
                      onPressed: (){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child:Text('Hesabınız var mı ? Giriş Yap ',
                        style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 13.0,)


                      ),),
                  ),], // Hesabın var mı ?
              )
          ),


        ),
      ),
    );
  }
}





