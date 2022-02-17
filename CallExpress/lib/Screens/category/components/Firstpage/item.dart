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
      title:'Kerry Pathum Thani',
      imageUrl:'https://lh5.googleusercontent.com/p/AF1QipN2nw4N7L0hch-vwzcP-qJYflf3r03V267mDIbL=w1080-k-no',
      zipcode: 12000,
      branchUrl: 'https://th.worldorgs.com/%E0%B9%81%E0%B8%84%E0%B8%95%E0%B8%95%E0%B8%B2%E0%B8%A5%E0%B9%87%E0%B8%AD%E0%B8%81/%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B9%80%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%87%E0%B8%9B%E0%B8%97%E0%B8%B8%E0%B8%A1%E0%B8%98%E0%B8%B2%E0%B8%99%E0%B8%B5/%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%88%E0%B8%AD%E0%B8%94%E0%B8%A3%E0%B8%96/kerry-express-%E0%B8%AA%E0%B8%B2%E0%B8%82%E0%B8%B2-%E0%B9%80%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%87%E0%B8%9B%E0%B8%97%E0%B8%B8%E0%B8%A1%E0%B8%98%E0%B8%B2%E0%B8%99%E0%B8%B5-shop-047'
  ),

];