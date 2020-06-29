import 'package:flutter/material.dart';
import 'package:flutter_app_design5/widgets/categorySelector.dart';
import 'package:flutter_app_design5/widgets/favoriteContacts.dart';
import 'package:flutter_app_design5/widgets/recentChats.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),*/
        centerTitle: true,
        title: Text('Chats',
          style: TextStyle(
            fontSize: 28.0,
                fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}
              ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: SafeArea(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10 ,),
                      CircleAvatar(
                        radius: 55.0,
                        backgroundImage: AssetImage('assets/greg.jpg'),
                      ),
                      SizedBox(height: 10,),
                      Text('Greg',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person,size: 40,),
              title: Text('Profile',
                style: TextStyle(
                    fontSize: 23.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings,size: 40,),
              title: Text('Settings',
                style: TextStyle(
                  fontSize: 23.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back,size: 40,),
              title: Text('Logout',
                style: TextStyle(
                  fontSize: 23.0,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(),
                    RecentChats()
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
