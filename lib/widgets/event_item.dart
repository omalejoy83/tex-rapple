import 'package:flutter/material.dart';

import '../widgets/dummy_data.dart';

class ListItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String name;
  ListItem({
    this.id,
    this.title,
    this.imageUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('hi'
          //   backgroundImage: AssetImage(
          //     imageUrl,
          //   ),
          ),
      title: Text(title),
      trailing: Icon(Icons.edit),
    );
  }
}
