import 'package:flutter/material.dart';
import 'package:location/location.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("MAP"),
        ),
        body: Center(

            child: Column(
              children: <Widget>[
                MaterialButton(
                  child: Text('Get'),
                    onPressed:() {
                      var location = new Location();

                      location.onLocationChanged().listen((Map<String,double> currentLocation) {
                        print(currentLocation["latitude"]);
                        print(currentLocation["longitude"]);
                        print(currentLocation["accuracy"]);
                        print(currentLocation["altitude"]);
                        print(currentLocation["speed"]);
                        print(currentLocation["speed_accuracy"]); // Will always be 0 on iOS
                      });
                    }
                    )
              ],


            )));
  }
}
