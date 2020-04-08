import 'package:flutter/material.dart';
import '../../net/netManager.dart';
import '../../API.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../userStorage.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  int _counter = 0;

  void _incrementCounter() {
    userStorage.changeName();
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    // });
//  static List weather = ['weather_mini', 'GET']; 转成对象
    // NetRequest<My>(API.weather, params: {'city': '沈阳'}).then((data) {
    //   print(data.city);
    //   print(data.ganmao);
    //   print(data.forecast[0].date);
    // }).catchError((e) {
    //   print(e.code);
    // });
// //  static List weather = ['weather_mini', 'GET'];
//     NetRequest(API.weather, params: {'city': '沈阳'}).then((data) {
//       if (data is Map) {
//         print("Map");
//         print(data["city"]);
//       }
//     });

//自定义的url static List dy_weather = ['http://wthrcdn.etouch.cn/weather_mini', 'GET'];
    // NetRequest<My>(API.dy_weather, params: {'city': '沈阳'}).then((data) {
    //   print(data.city);
    //   print(data.ganmao);
    //   print(data.forecast[0].date);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title),
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
                userStorage.name,
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
    });
  }
}