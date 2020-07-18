import 'package:flutter/material.dart';
import 'package:fashkart/pages/category_dress_page.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cate/tops.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cate/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/cate/shoes.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/cate/shirts.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/cate/suit.png',
            image_caption: 'Suit',
          ),
          Category(
            image_location: 'images/cate/watch.png',
            image_caption: 'Watch',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  @override // ignore: empty_constructor_bodies
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => new Category_page()));
      },
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
              width: 100.0,
              height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),);
  }
}

