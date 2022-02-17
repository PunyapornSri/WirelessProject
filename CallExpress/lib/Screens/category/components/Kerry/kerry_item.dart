import 'package:flutter/material.dart';

class Item{
  int id;
  String title;
  String imageUrl;
  double price;
  String buyUrl;

  Item(
      {
        @required this.id,
        @required this.title,
        @required this.imageUrl,
        @required this.price,
        @required this.buyUrl
      });
}

List<Item> itemList = [
  Item(
      id: 1,
      title:'The Midnight Library',
      imageUrl:'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/7868/9781786892737.jpg',
      price: 328.29,
      buyUrl: 'https://www.bookdepository.com/Midnight-Library-Matt-Haig/9781786892737?ref=grid-view'
  ),
  Item(
      id: 2,
      title:'Surrounded by Idiots : The Four Types of Human Behaviour',
      imageUrl:'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/7850/9781785042188.jpg',
      price: 382.96,
      buyUrl: 'https://www.bookdepository.com/Surrounded-by-Idiots-Thomas-Erikson/9781785042188?ref=grid-view'
  ),
  Item(
      id: 3,
      title:'Where the Crawdads Sing',
      imageUrl:'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4721/9781472154668.jpg',
      price: 314.22,
      buyUrl: 'https://www.bookdepository.com/Where-Crawdads-Sing-Delia-Owens/9781472154668?ref=grid-view'
  ),
  Item(
      id: 4,
      title:'Shadow and Bone',
      imageUrl:'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/5101/9781510105249.jpg',
      price: 286.21,
      buyUrl: 'https://www.bookdepository.com/Shadow-Bone-Leigh-Bardugo/9781510105249?ref=grid-view'
  ),
  Item(
      id: 5,
      title:'Crooked Kingdom Collector\'s Edition',
      imageUrl:'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/5101/9781510107038.jpg',
      price: 617.15,
      buyUrl: 'https://www.bookdepository.com/Crooked-Kingdom-Collectors-Edition-Leigh-Bardugo/9781510107038?ref=grid-view&qid=1620012807777&sr=1-2'
  ),
];