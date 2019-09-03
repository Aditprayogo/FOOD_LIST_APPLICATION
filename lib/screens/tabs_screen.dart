import 'package:flutter/material.dart';
import '../screens/profile_screen.dart';
import '../screens/favorites_screen.dart';
import '../screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Meal App'),
          ),
          bottom: TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.amberAccent,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorite',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'My Profile',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
            MyProfile(),
          ],
        ),
      ),
    );
  }
}
