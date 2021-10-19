import 'package:flutter/material.dart';
import 'package:wechat/ui/home.dart';
import 'package:wechat/ui/fonts/colors.dart';
import 'package:wechat/models/user_model.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bizim Çet',
      home: Home(),
    );
  }
}
