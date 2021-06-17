import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "UI Task_2",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFFF5336),
        scaffoldBackgroundColor: Color(0xFFFF5336),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Weather Forecast',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),),
      ),
      body: MyBodyPage(),
    );
  }
}

class MyBodyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchLine(),
        ],
      ),
    );
  }
}

class SearchLine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.search, size: 30.0,),
          SizedBox(),
         Text('Entry City Name', style: TextStyle(
           fontSize: 19.0,
         ),
         ) ,
        ],
      ),
    );
  }
}
