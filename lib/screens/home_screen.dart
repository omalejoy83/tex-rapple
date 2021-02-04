import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/dummy_data.dart';
import '../screens/new_event.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Dummy_Events;
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('New event'),
                value: 'first',
              ),
              PopupMenuItem(
                child: Text('Search'),
                value: 'second',
              ),
              PopupMenuItem(
                child: Text('Clear event'),
                value: 'third',
              ),
              PopupMenuItem(
                child: Text('Refresh'),
                value: 'fourth',
              ),
              PopupMenuItem(
                child: Text('Settings'),
                value: 'fifth',
              )
            ],
            icon: Icon(
              Icons.more_vert,
            ),
            onSelected: (value) {
              if (value.toString() == 'first') {
                Navigator.of(context).pushNamed(NewEventScreen.routeName);
              }
              return;
            },
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: Container(
        child: ListView.builder(
          itemCount: event.length,
          itemBuilder: (ctx, index) => Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(event[index].imageUrl),
                ),
                title: Text(event[index].title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    )),
                trailing: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.red,
                ),
                subtitle: Text(event[index].name),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
