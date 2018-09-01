import 'package:flutter/material.dart';

abstract class LoadingBaseState<T extends StatefulWidget> extends State<T> {
  bool _isLoading = false;
  bool _hasUser = false;
  String _title = "";

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: <Widget>[
          _hasUser
              ? FlatButton(
                  onPressed: _logout(),
                  child: new Text(
                    "LogOut User",
                    style: new TextStyle(color: Colors.white),
                  ))
              : new Container()
        ],
      ),
      body: _isLoading
          ? new Center(child: new CircularProgressIndicator())
          : content());

  _logout() {
    Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text("Logout"),
        ));
  }

  Widget content();

  set isLoading(bool value) {
    _isLoading = value;
  }

  set title(String value) {
    _title = value;
  }

  set hasUser(bool value) {
    _hasUser = value;
  }
}
