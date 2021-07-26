import 'package:flutter/material.dart';

import 'package:gmatidioms/level.dart';
import 'package:gmatidioms/models/LevelModel.dart';

final _levels = <LevelModel>[
  LevelModel('Basic I', '0 of 39 idioms mastered'),
  LevelModel('Basic II', '0 of 38 idioms mastered'),
  LevelModel('Advanced I', '0 of 39 idioms mastered'),
  LevelModel('Advanced II', '0 of 38 idioms mastered'),
];

class LevelsScreen extends StatelessWidget {
  Color backgroundColor;

  LevelsScreen({Key key, @required this.backgroundColor})
      : assert(backgroundColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final _levelWidgets = List<Widget>();

    for (var i = 0; i < _levels.length; i++) {
      _levelWidgets.add(new Level(
          name: _levels[i].name, progressText: _levels[i].progressText));
    }

    final appBar = AppBar(
      title: Center(
          child: Text(
        'GMAT Idioms',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      )),
      backgroundColor: backgroundColor,
      elevation: 0.0,
    );

    final listView = ListView.builder(
      itemBuilder: (BuildContext context, int index) => _levelWidgets[index],
      itemCount: _levelWidgets.length,
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: listView,
        ),
      ),
    );
  }
}
