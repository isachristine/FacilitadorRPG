import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String title;
  final String subtitle;

  StatusCard(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(title),
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: subtitle,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add),
                    onPressed: null,
                  ),
                  SizedBox(height: 10,),
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.remove),
                    onPressed: null,
                  ),
                ],
              ),
            ),
         ],
      ),
    );
  }
}
