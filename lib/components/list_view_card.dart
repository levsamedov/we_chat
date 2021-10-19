import 'package:flutter/material.dart';
import 'package:wechat/models/user_model.dart';
import 'package:wechat/ui/home.dart';


class ListViewCard extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24.0,
      ),
      title: Wrap(
        children: [
          Text(user.name),
        ],
      ),
    );
  }
}
