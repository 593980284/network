import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  LoginPage({Key key}) : super(key: key);
  int _counter = 0;

  void _incrementCounter() {
  
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                {"name": 'huchao'}.toString(),
                style: Theme.of(context).textTheme.display1,
              ),
              Text(
                "loginPage",
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );

  }
}