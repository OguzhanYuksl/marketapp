import 'package:flutter/material.dart';
import 'style.dart';
Widget DiscountPage(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.green[400],
            width: double.infinity,
            height: 60,
            child: TabBar(
              tabs: <Widget>[
                Text('Promosyonlar'),
                Text('Duyurular'),
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            width: double.infinity,
            height: 100,
            child: TabBarView(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Promosyon kodu ekle',
                style: Promosyon),
                FlatButton(child: Icon(Icons.add_circle),
                onPressed: (){
                  kampanyaEkle(context);
                },),
              ],
            ),
                ),
                Container(
                  child: Text('Duyurular',
                  style: Promosyon,),
                ),
              ],
            ),
          ),
        ],
      ),

          ),
        );


}

kampanyaEkle(BuildContext context) {
  // Buton Tanımlamaları
  Widget cancelButton = RaisedButton(
    shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
        side: BorderSide(color: kodmozRenk)),
    child: Text('İptal Et'),
    onPressed: (){
      Navigator.pop(context);

    },
  );
  Widget continueButton = RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(8.0),
      side:  BorderSide(color: kodmozRenk)
    ),
    child: Text('Ekle'),
    onPressed: (){

    },
  );


  // Alert Hazırlığı
  AlertDialog alert= AlertDialog(
    title: Text('Promosyon Kodu'),
    content: TextField(
      decoration: InputDecoration(
        hintText: 'Promosyon kodunu ekleyin',
      ),
    ),
    actions: <Widget>[
      cancelButton,
      continueButton,
    ],
  );

  // Diyaloğu gösterme
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
  );
}
