import 'package:flutter/material.dart';

class Item{
  int id;
  String title;
  String imageUrl;
  double zipcode;
  String branchUrl;

  Item(
      {
        @required this.id,
        @required this.title,
        @required this.imageUrl,
        @required this.zipcode,
        @required this.branchUrl
      });
}

List<Item> itemList = [
  Item(
      id: 1,
      title:'SAMSUNG TV UHD LED (55", 4K, Smart)',
      imageUrl:'https://res.cloudinary.com/cenergy-innovation-limited-head-office/image/fetch/c_scale,q_70,f_auto,h_740/https://d1dtruvuor2iuy.cloudfront.net/media/catalog/product/p/w/pwb000256784-install.jpg',
      zipcode: 15699,
      branchUrl: 'https://www.powerbuy.co.th/th/samsung-led-tv-55-samsung-uhd-smart-dtv-ua55tu8100kxxt-256784'
  ),

];