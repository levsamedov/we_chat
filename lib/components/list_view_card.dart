import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding * 0.75,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              child: Column(
                children: [
                  Text(user.name),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
