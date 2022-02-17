import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/category/components/firstpage/item.dart';
import 'package:flutter_auth/Screens/category/components/firstpage/detail.dart';
// ignore: unused_import
import 'package:flutter_auth/Screens/category/components/Kerry/kerry.dart';
import 'package:flutter_auth/Screens/Search/search.dart';
import 'package:flutter_auth/Screens/category/components/location/simple_map.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('CALL EXPRESS'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Search()));
              },
            )
          ],
        ),
        body: BodyLayout(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(
                child: Center(
                    child: new Text(
                  'Category',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
                decoration: BoxDecoration(color: Colors.purple[900]),
              ),
              ListTile(
                  leading: new Icon(Icons.home),
                  title: Text('Home page'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Body();
                        },
                      ),
                    );
                  }),
              ListTile(
                  leading: new Icon(Icons.car_rental),
                  title: Text('Kerry'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Body();
                        },
                      ),
                    );
                  }),

              ListTile(
                  leading: new Icon(Icons.location_on_outlined ),
                  title: Text('Current Location'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SimpleMap();
                        },
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}

class BodyLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Scaffold(
    body: ListView.builder(
      itemExtent: 100,
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(itemList[index].imageUrl),
          title: Text(itemList[index].title),
          subtitle: Text("\฿ " +
              itemList[index].zipcode.toString() +
              "\n Click more detail"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(itemList[index])));
          },
        );
      },
    ),
  );
}

