import 'package:flutter/material.dart';


class StatusCard extends StatefulWidget {
  String title;
  var enteredPoints;


  StatusCard(this.title, this.enteredPoints);


  @override
  _StatusCardState createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  var _pointsController = TextEditingController();
  int _counter = 0;

  void _submitData() {
    if (_pointsController.text.isEmpty) {
      return;
    }
    var enteredPoints = double.parse(_pointsController.text);
    _counter = enteredPoints as int;

    widget.enteredPoints(
      enteredPoints,
    );
  }


  @override
  void initState(){
    super.initState();
    print('initState()');
    print(_pointsController);
    print(_counter);
  }

  void addPoints(){
    setState(() {
      _counter ++;
      print (_counter);
    });
  }

  void removePoints(){
    setState(() {
      _counter --;
      print (_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
            Expanded(
              child: Container(
                child: Text(widget.title,
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
                child: TextField(
                  controller: _pointsController,
                  onSubmitted: (_) => _submitData(),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.add),
                    onPressed: addPoints,
                  ),
                  SizedBox(height: 5,),
                  RaisedButton(
                    child: Icon(Icons.remove),
                    onPressed: removePoints,
                  ),
                ],
              ),
            ),
         ],
      ),
    );
  }
}

