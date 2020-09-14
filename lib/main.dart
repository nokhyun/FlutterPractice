import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nokhyun Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Nokhyun Flutter Tutorial Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var titleSection = Row(
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
      Icon(
        Icons.star,
        size: 35,
        color: Colors.deepOrange,
      ),
      Text(
        '41',
        style: TextStyle(fontSize: 22),
      ),
    ],
  );

  var buttonSection = Row(
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
  


  var textSection = Container(
      child: Text('Lake......', style: TextStyle(fontSize: 15)),
      padding:EdgeInsets.all(40.0)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
            '',
            height: 240,
            width: 600,
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(12.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(12.0)),
          buttonSection,
          textSection
        ],
      ),
    );
  }

  Text _getText(String str){
    return Text(str, style: TextStyle(color: Colors.lightBlue));
  }
}
