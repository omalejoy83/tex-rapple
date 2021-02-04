import 'package:flutter/material.dart';

import '../screens/new_event.dart';

// Widget buildSectionTile( String title, Icons icons){
//   return ListTile(
//     leading: Icon(),
//     title: Text(title),
//   );
// }

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        AppBar(
          title: Text('TexRapple'),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.event,
            color: Colors.red,
          ),
          title: Text('Events'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.event,
            color: Colors.red,
          ),
          title: Text('New events'),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(NewEventScreen.routeName);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.notification_important,
            color: Colors.red,
          ),
          title: Text('Push Notifications'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.red),
          title: Text('Settings'),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.refresh,
            color: Colors.red,
          ),
          title: Text('Refresh'),
        ),
      ]),
    );
  }
}
