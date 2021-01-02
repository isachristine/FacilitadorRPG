import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String points;

  StatusCard(this.title, this.subtitle, this.points);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
            Expanded(
              child: Container(
                child: Text(title,
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 90,
                width: 20,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text(points,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.add),
                    onPressed: null,
                  ),
                  SizedBox(height: 5,),
                  RaisedButton(
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
