import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';

Widget SearchPage() {
  return new Container(
    alignment: Alignment.topCenter,
    color: Colors.grey[100],
    height: 30,

    margin: EdgeInsets.fromLTRB(15,0,15,10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.search),
            new Flexible(
              child: new TextField(
                style: SearchBox,
                decoration: InputDecoration(hintText: 'Ürün Ara',
                    border: InputBorder.none,
                    hoverColor: kodmozRenk),
              ),
            ),
            SizedBox(
              width: 100,
            ),
            Icon(Icons.keyboard_voice,
              color: Colors.grey[600],),

          ],
        ),
  Container(
    child: Text('Popüler Aramalar',
    style: Shadow,),
  ),
  Container(
  margin: EdgeInsets.symmetric(vertical: 20.0),
  height: 37.0,
  child: new ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
  Container(width: 75.0, child: RaisedButton(child: Text('Süt'),
      onPressed: (){},
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(13.0),
          side: BorderSide(color: kodmozRenk)
      ),
  ),),

    SizedBox(width: 5.0,),
    Container(width: 75.0, child: RaisedButton(child: Text('Cips'),
      onPressed: (){},
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
          side: BorderSide(color: kodmozRenk)
      ),
    ),),
    SizedBox(width: 5.0,),
    Container(width: 75.0, child: RaisedButton(child: Text('Kola'),
      onPressed: (){},
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
          side: BorderSide(color: kodmozRenk)
      ),
    ),),
    SizedBox(width: 5.0,),
    Container(width: 75.0, child: RaisedButton(child: Text('Kahve'),
      onPressed: (){},
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
          side: BorderSide(color: kodmozRenk)
      ),
    ),),
    SizedBox(width: 5.0,),
    Container(width: 75.0, child: RaisedButton(child: Text('Peynir'),
      onPressed: (){},
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(13.0),
          side: BorderSide(color: kodmozRenk)
      ),
    ),),
    SizedBox(width: 5.0,),
    Container(width: 75.0, child: RaisedButton(child: Text('Su'),
      onPressed: (){},
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(13.0),
          side: BorderSide(color: kodmozRenk)
      ),
    ),),
  ],
  )
  ),


      ],
      )
      );
}


