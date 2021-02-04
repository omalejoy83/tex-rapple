import 'package:flutter/material.dart';
import 'package:contact_picker/contact_picker.dart';

import '../widgets/drawer.dart';

class NewEventScreen extends StatefulWidget {
  static const routeName = '/add_event';
  @override
  _NewEventScreenState createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final ContactPicker _contactPicker = new ContactPicker();
  Contact _contact;

  List _eventName = ['Birthday', 'Wedding Aniversary', 'Graduation', 'Others'];
  List _relationship = [
    'Father',
    'Mother',
    'Brother',
    'Sister',
    'Family Friend',
    'Aunty',
    'Uncle',
    'Best Friend',
    'Friend',
    'Aquaintance',
    'Pastor',
    'Others',
  ];
  String _relatnship;
  String _event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Event'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save, size: 24, color: Colors.white),
              onPressed: () => print('save icon'))
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.3),
                        borderRadius: BorderRadius.circular(3)),
                    child: DropdownButton(
                      hint: Text('Select Event Name'),
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      value: _event,
                      onChanged: (value) {
                        setState(() {
                          _event = value;
                        });
                      },
                      items: _eventName
                          .map((value) => DropdownMenuItem(
                              value: value, child: Text(value)))
                          .toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.3),
                        borderRadius: BorderRadius.circular(3)),
                    child: DropdownButton(
                      hint: Text('Select Your Relationship'),
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      value: _relatnship,
                      onChanged: (value) {
                        setState(() {
                          _relatnship = value;
                        });
                      },
                      items: _relationship
                          .map((value) => DropdownMenuItem(
                              value: value, child: Text(value)))
                          .toList(),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.person,
                          size: 36,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          Contact contact =
                              await _contactPicker.selectContact();

                          setState(() {
                            _contact = contact;
                          });
                          print('Contact selected');
                        }),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 275,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.3),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            _contact == null
                                ? 'Click the icon to select contact'
                                : _contact.toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.2)),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Select Date of event',
                            style: TextStyle(
                              letterSpacing: 2,
                            ),
                          ),
                        )),
                        Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.date_range,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.2)),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Select Time of reminder',
                            style: TextStyle(
                              letterSpacing: 2,
                            ),
                          ),
                        )),
                        Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.watch,
                              color: Colors.red,
                            ))
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(8)),
                      child: FlatButton(
                        child: Text('DONE',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            )),
                        onPressed: () {
                          print('Sved');
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
