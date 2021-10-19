import 'package:flutter/material.dart';
import 'package:wechat/ui/fonts/colors.dart';
import 'package:wechat/models/user_model.dart';
import 'package:wechat/components/list_view_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Bizim Çet',
          style: TextStyle(
            color: color1,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 30.0,
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: color1,
            ),
          )
        ],
      ),
      floatingActionButton: _fabButton,
      bottomNavigationBar: _bottomNav,
      body: SafeArea(
        child: _listView,
      ),
    );
  }

  Widget get _fabButton => FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        backgroundColor: color1,
        onPressed: () {},
        child: Icon(
          Icons.edit,
          size: 30.0,
          color: Colors.white,
        ),
      );

  Widget get _bottomNav => BottomNavigationBar(
        iconSize: 29.0,
        selectedItemColor: color3,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: color2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.forum_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: '',
          ),
        ],
      );
  Widget get _listView => ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, index) => ListViewCard(user: userData[index]),
      );

  
}
