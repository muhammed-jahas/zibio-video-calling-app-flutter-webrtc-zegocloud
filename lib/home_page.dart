import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zibio/video_call_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showTextEntryDialog(context);
        },
        child: Icon(
          Icons.video_chat,
        ),
      ),
      body: Center(
        child: Text("Make a Video Call:"),
      ),
    );
  }

  void _showTextEntryDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          String text = '';
          return AlertDialog(
            title: Text('Enter Your Call ID'),
            content: TextField(
              onChanged: (value) {
                text = value;
              },
              decoration: InputDecoration(
                hintText: "Enter your text here",
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoCallPage(callID: text),
                        ));
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }
}
