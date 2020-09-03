import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String gender = "";
  bool _isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Select your gender',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            RadioListTile(
              title: Text('Male'),
              value: "Male",
              groupValue: gender,
              onChanged: (String genderD) {
                setState(() {
                  gender = genderD;
                  _isCompleted = true;
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: "Female",
              groupValue: gender,
              onChanged: (String genderD) {
                setState(() {
                  gender = genderD;
                  _isCompleted = true;
                });
              },
            ),
            RadioListTile(
              title: Text('None'),
              value: "None",
              groupValue: gender,
              onChanged: (String genderD) {
                setState(() {
                  gender = genderD;
                  _isCompleted = true;
                });
              },
            ),
            SizedBox(height: 20.0),
            new RaisedButton(
              onPressed: _isCompleted ? () {} : null,
              disabledColor: Colors.blue,
              disabledTextColor: Colors.blueGrey,
              color: Colors.red,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: const Text('Next', style: TextStyle(fontSize: 18.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
