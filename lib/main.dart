import 'package:flutter/material.dart';
import 'package:torch_compat/torch_compat.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('Aç',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  color: Colors.green,
                  onPressed: () {
                    TorchCompat.turnOn();
                  }),
              SizedBox(height: 20,),
              RaisedButton(
                color: Colors.red,
                  child: Text('Kapat',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  onPressed: () {
                    TorchCompat.turnOff();
                  })
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Mandatory for Camera 1 on Android
    TorchCompat.dispose();
    super.dispose();
  }
}