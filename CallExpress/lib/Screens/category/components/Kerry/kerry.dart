import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/category/components/Kerry/search.dart';
import 'package:flutter_auth/Screens/category/components/Kerry/detail.dart';
import 'package:flutter_auth/Screens/category/components/Kerry/kerry_item.dart';
import 'package:flutter_auth/Screens/category/components/Firstpage/body.dart';
import 'package:flutter_auth/Screens/category/components/location/simple_map.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Category',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Books'),
            backgroundColor: Colors.purple[900],
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
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
                    leading: new Icon(Icons.book),
                    title: Text('Books'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Books();
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
          )),
    );
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
              itemList[index].price.toString() +
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
