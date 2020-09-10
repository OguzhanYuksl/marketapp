import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter2001/discount.dart';
import 'package:flutter2001/search.dart';
import 'product.dart';
import 'style.dart';
import 'search.dart';
import 'profile.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'kategori.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(40.821618, 29.309701);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: SafeArea(
        bottom: true,
        top: false,
        child: DefaultTabController(
          length: 4,
          child: new Scaffold(

            appBar: AppBar(
              backgroundColor: kodmozRenk,
              title: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 80,
                width: double.infinity,
              ),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5,0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: FlatButton(
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Teslimat Adresi Belirle',
                                        style: Menu,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: kodmozRenk,
                                      ),
                                    ],
                                  ),
                                ),
                                onPressed: (){

                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[100]),
                        ),
                        margin: EdgeInsets.all(0),
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: GoogleMap(
                            onMapCreated: _onMapCreated,
                            initialCameraPosition: CameraPosition(
                              target: _center,
                              zoom: 14.0,
                            ),
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'k-sipariş',
                                style: Buton,
                              ),
                              color: kodmozRenk,
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  side: BorderSide(color: kodmozRenk)),
                            ),
                            RaisedButton(
                                onPressed: () {},
                                child: Text('k-yemek', style: Buton),
                                color: kodmozRenk,
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(8.0),
                                    side: BorderSide(color: kodmozRenk))),
                            RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'k-büyük',
                                  style: Buton,
                                ),
                                color: kodmozRenk,
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(8.0),
                                    side: BorderSide(color: kodmozRenk)))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                        child: Text(
                          'İNDİRİMLER',
                          style: Baslik,
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints.expand(height: 200),
                        child: ListView(
                            padding: EdgeInsets.only(left: 40),
                            scrollDirection: Axis.horizontal,
                            children: getRecentProducts()),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'KATEGORİLER',
                          style: Baslik,
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints.expand(height: 130),
                        child: ListView(
                            padding: EdgeInsets.only(left: 40),
                            scrollDirection: Axis.horizontal,
                            children: getRecentCategories()),
                      ),
                    ],
                  ),
                ), // Ana Sayfa Widget
                SearchPage(), // Arama Sayfası
                ProfilePage(context), // Profil Sayfası
                DiscountPage(context), // İndirim Sayfası
              ],
            ),
            bottomNavigationBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home, size: 44.0),
                ), // Ana Sayfa - NAV
                Tab(
                  icon: new Icon(Icons.search, size: 44.0),
                ), // Search - NAV
                Tab(
                  icon: new Icon(Icons.perm_identity, size: 44.0),
                ), //Profile-NAV
                Tab(
                  icon: new Icon(Icons.card_giftcard, size: 44.0),
                ), // Discount-NAV
              ],
              labelColor: kodmozRenk,
              unselectedLabelColor: Colors.grey[400],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: kodmozRenk,
            ),
          ),
        ),
      ),
    );
  }

  List<String> productCategories = ["Yeni Ürünler", "Su", "FastFood"];

  Map productCatToIcon = {
    "Yeni Ürünler": Icon(Icons.fiber_new, color: Colors.deepPurple, size: 50),
    "Su": Icon(Icons.invert_colors, color: Colors.deepPurple, size: 50),
    "FastFood": Icon(Icons.fastfood, color: Colors.deepPurple, size: 50),
  };

  Widget getCategoryContainer(String categoryName) {
    return new Container(
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
      height: 180,
      width: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Text(categoryName, style: titileStyleLighterBlack),
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 100,
            width: 70,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: productCatToIcon[categoryName],
              elevation: 10,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  } // OK

  List<Widget> getProductCategories() {
    List<Widget> productCategoriesCards = [];
    List<Widget> rows = [];
    int i = 0;
    for (String category in productCategories) {
      if (i < 2) {
        rows.add(getCategoryContainer(category));
        i++;
      } else {
        i = 0;
        productCategoriesCards.add(new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rows,
        ));
        rows = [];
        rows.add(getCategoryContainer(category));
        i++;
      }
    }
    if (rows.length > 0) {
      productCategoriesCards.add(new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rows,
      ));
    }
    return productCategoriesCards;
  }

  List<Product> findProducts() {
    List<Product> products = [];
    for (int i = 0; i < 10; i++) {
      products.add(new Product(" Kahvaltılıklar ", "  Nestle Nesquik",
          AssetImage("assets/images/nesquik.jpg")));
    }
    return products;
  }

  List<Widget> getRecentProducts() {
    List<Widget> recentProductCards = [];
    List<Product> products = findProducts();
    for (Product product in products) {
      recentProductCards.add(getProductCard(product));
    }
    return recentProductCards;
  }

  Widget getProductCard(Product product) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 20, bottom: 30, top: 30),
      height: 150,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: product.companyLogo,
              ),
              Text(
                product.productTitle,
                style: productCardTitileStyleBlue,
              )
            ],
          ),
          Text(product.companyName + " - ", style: productCardTitileStyleBlack),
        ],
      ),
    );
  }


}

