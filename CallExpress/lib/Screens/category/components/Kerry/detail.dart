import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/category/components/Kerry/kerry_item.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class  DetailPage extends StatelessWidget {
  Item item ;
  DetailPage(this.item);
  var linktext = TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Text('Detail'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                item.imageUrl,
                height: 500,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\฿ " + item.price.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            style: linktext,
                            text: "BUY?",
                            recognizer: TapGestureRecognizer()..onTap =  () async{
                              var url = this.item.buyUrl;
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            }
                        ),
                      ]
                  ))
            ],
          ),
        ),
      ),
    );
  }
}



