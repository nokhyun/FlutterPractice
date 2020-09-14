import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nokhyun Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  bool _isStared = false;
  int _count = 41;

  Row getTitleSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Oeschinen Lake Comapground',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('Kandresteg, Switzerland',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ],
        ),
        Padding(padding: EdgeInsets.all(8.0)),
        IconButton(
          icon: (_isStared? Icon(Icons.star) : Icon(Icons.star_border)),
          color: Colors.deepOrange,
          onPressed: () => _pressedStar(),
        ),
        Text(
          '$_count',
          style: TextStyle(fontSize: 22),
        ),
      ],
    );
  }

  Row getButtonSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Icon(
              Icons.call,
              size: 40,
              color: Colors.lightBlue,
            ),
            Text(
              'Call',
              style: TextStyle(color: Colors.lightBlue),
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(40.0)),
        Column(
          children: [
            Icon(Icons.near_me, size: 40, color: Colors.lightBlue),
            Text(
              'ROUTE',
              style: TextStyle(color: Colors.lightBlue),
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(40.0)),
        Column(
          children: [
            Icon(Icons.share, size: 40, color: Colors.lightBlue),
            Text('SHARE', style: TextStyle(color: Colors.lightBlue))
          ],
        )
      ],
    );
  }

  Container getTextSection(){
    return Container(
        child: Text('Lake......', style: TextStyle(fontSize: 15)),
        padding: EdgeInsets.all(40.0)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/sample/lake.jpg',
            height: 240,
            width: 600,
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(12.0)),
          getTitleSection(),
          Padding(padding: EdgeInsets.all(12.0)),
          getButtonSection(),
          getTextSection()
        ],
      ),
    );
  }

  void _pressedStar() {
    setState(() {
      _isStared = !_isStared;

      if(_isStared){
        _count++;
      }else{
        _count--;
      }
    });
  }

}
