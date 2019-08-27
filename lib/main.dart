
import 'package:flutter/material.dart';
import 'package:slide_flutter/cards.dart';
import 'package:slide_flutter/matches.dart';
import 'package:slide_flutter/profiles.dart';

void main() => runApp(new MyApp());

final MatchEngine matchEngine = new MatchEngine(
  matches: demoProfiles.map((Profile profile){
    return new DateMatch(profile: profile);
  }).toList(),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pets',
      theme: new ThemeData(
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(title: 'Near By'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text("Pets"),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      body: new CardStack(
        matchEngine: matchEngine
      ),
      //bottomNavigationBar: _buildBottomBar(),
    );
  }
}
