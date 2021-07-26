import 'package:flutter/material.dart';

Color _darkGrey = Colors.grey[600];

class Level extends StatelessWidget {
  final String name;
  final String progressText;

  const Level({Key key, this.name, this.progressText})
      : assert(name != null),
        assert(progressText != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Container(
      constraints: BoxConstraints.tightFor(width: double.infinity),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Text(
        name,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );

    final subtitle = Container(
      constraints: BoxConstraints.tightFor(width: double.infinity),
      margin: EdgeInsets.only(bottom: 4.0),
      child: Text(
        progressText,
        style: TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.w400, color: _darkGrey),
      ),
    );

    final progressBar = Container(
        constraints: BoxConstraints.tightFor(width: double.infinity),
        height: 20.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            value: 0,
          ),
        ));

    final levelInfo = Container(
      decoration: BoxDecoration(
          border:
              BorderDirectional(bottom: BorderSide(color: Colors.grey[300]))),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[title, subtitle, progressBar],
      ),
    );

    final buttonBar = FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.all(14.0),
        color: Colors.grey[200],
        onPressed: () {
          print('I was tapped!');
        },
        child: Container(
          constraints: BoxConstraints.tightFor(width: double.infinity),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Practice this deck ',
                style: TextStyle(
                    color: _darkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.arrow_forward,
                size: 14.0,
                color: _darkGrey,
              )
            ],
          ),
        ));

    return Container(
      constraints: BoxConstraints.tightFor(width: double.infinity),
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[levelInfo, buttonBar],
      ),
    );
  }
}
