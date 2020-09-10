import 'package:flutter/material.dart';
import 'style.dart';




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
}




List<Category> createCategory() {
  List<Category> categories = [];
  for (int i = 0; i < 10; i++) {
    categories.add(new Category("Kişisel Bakım",
        AssetImage("assets/images/rexona.jpg")));
  }
  return categories;
}
List<Widget> getRecentCategories() {
  List<Widget> recentCategoryCards = [];
  List<Category> categories = createCategory();
  for (Category category in categories) {
    recentCategoryCards.add(getCategoryCard(category));
  }
  return recentCategoryCards;
}
Widget getCategoryCard(Category category) {
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
              backgroundImage: category.categoryLogo, // Kategori Logosu
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              category.categoryName, // Kategori Adı
              style: CategoryName,
            )
          ],
        ),
      ],
    ),
  );
}



class Category {

  String categoryName;
  AssetImage categoryLogo;


  Category(this.categoryName,this.categoryLogo);
}