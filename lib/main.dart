//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'hello world'
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text('You clicked the button'),
//            Text('$_counter', style: Theme.of(context).textTheme.display1,)
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _IncrementCounter,
//        tooltip: 'increment',
//        child: Icon(Icons.add),
//      ),
//    );
//  }
//
//  void _IncrementCounter() {
//    setState(() {
//      _counter += 1;
//    });
//  }
//}

class _MyHomePageState extends State<MyHomePage> {
  var titleSection = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text("PikaChu!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
      Text("전기쥐 포켓몬", style: TextStyle(color: Colors.grey, fontSize: 26)),
    ],
    ),
    Padding(padding: EdgeInsets.all(20)),
    Icon(Icons.star, size: 35, color: Colors.deepOrange,),
    Text('41', style: TextStyle(fontSize: 30),)
  ],);
  var buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(children: <Widget>[
        Icon(Icons.call, size: 45, color: Colors.lightBlue),
        Text('CALL', style: TextStyle(color: Colors.lightBlue)),
      ]),
      Padding(padding: EdgeInsets.all(30.0)),
      Column(children: <Widget>[
        Icon(Icons.near_me, size: 45, color: Colors.lightBlue),
        Text('ROUTE', style: TextStyle(color: Colors.lightBlue)),
      ]),
      Padding(padding: EdgeInsets.all(30.0)),
      Column(children: <Widget>[
        Icon(Icons.share, size: 45, color: Colors.lightBlue),
        Text('SHARE', style: TextStyle(color: Colors.lightBlue)),
      ]),
  ],
  );
  var textSection = Container(
    child: Text('피카츄 라이쥬 파이리 꼬부기 버터풀 야도란 피죤투 또가스 서로생긴모습은 달라도 우리는 모두 친구! 맞아맞아',
      style: TextStyle(fontSize: 20)),
    padding: EdgeInsets.all(40),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network("https://w7.pngwing.com/pngs/855/341/png-transparent-pokemon-pikachu-pikachu-pokemon-x-and-y-pokemon-go-pokemon-ruby-and-sapphire-ash-ketchum-pokemon-dog-like-mammal-cartoon-snout-thumbnail.png",
            fit:BoxFit.cover,),
          Padding(padding: EdgeInsets.all(15.0),),
          titleSection,
          Padding(padding: EdgeInsets.all(15.0),),
          buttonSection,
          textSection
        ],
      )
    );
  }
}
