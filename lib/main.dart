import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "UI Task_2",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFFF5232),
        scaffoldBackgroundColor: Color(0xFFFF5232),
        // backgroundColor: Color(0xFFFF5336),
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
        elevation: 0,
        centerTitle: true,
        title: Text('Weather Forecast',
        style: TextStyle(
          fontSize: 22.0,
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
          TextField(),
          CityDetail(),
          TemperatureDetail(),
          ExtraWeatherDetail(),
          TextLine(),
          BottomDetail(),
        ],
      ),
    );
  }
}

class TextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.search, size: 28.0,),
          SizedBox(
            width: 12.0,
          ),
         Text('Entry City Name', style: TextStyle(
           fontSize: 17.0,
         ),
         ) ,
        ],
      ),
    );
  }
}

class CityDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Text("Kharkiv, UA",
              style:  TextStyle(
                fontSize: 40.0,
                fontFamily: 'Raleway',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
          SizedBox(
            height: 10.0,
          ),
          Text('Friday, June 18, 2021',
          style: TextStyle(
            fontSize: 19.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}

class TemperatureDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: EdgeInsets.only(top: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wb_sunny,
          size: 80.0,),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('26 °С',
              style: TextStyle(
                fontFamily: 'Raleway',
                // fontWeight: FontWeight.bold,
                fontSize: 61.0,
              ),),

              Text('SUNNY',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),),
            ],
          ),

        ],
      ),
    );
  }
}

class ExtraWeatherDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return Padding(
      padding: EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.arrow_forward_sharp,
              size: 35.0,),
              Text('2',
              style: TextStyle(
                fontSize: 21.0,

              ),),
              Text('km/hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.wb_sunny_rounded,
                size: 35.0,),
              Text('98',
              style: TextStyle(
                fontSize: 21.0,

              ),),
              Text('%'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.wb_cloudy_outlined,
                size: 35.0,),
              Text('2',
              style: TextStyle(
                fontSize: 21.0,

              ),),
              Text('%'),
            ],
          ),
        ],
      ),
    );
  }
}

class TextLine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Text('7-DAY WEATHER FORECAST',
      style: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
}

class BottomDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Container(
          width: 100.0,
          // height: 100.0,
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Saturday'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('29 °C'),
                  Icon(Icons.wb_sunny),
                ],
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
