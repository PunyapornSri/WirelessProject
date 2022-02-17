import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Search/search_item.dart';
import 'package:url_launcher/url_launcher.dart';

class  DetailPage extends StatelessWidget {
  Item item ;
  var linktext = TextStyle(color: Colors.blue);
  DetailPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
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
                  "\฿ " + item.zipcode.toString(),
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
                            text: "Branch",
                            recognizer: TapGestureRecognizer()..onTap =  () async{
                              var url = this.item.branchUrl;
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



