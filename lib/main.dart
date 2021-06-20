import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "UI Task_2",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFF44336),
        scaffoldBackgroundColor: Color(0xFFFF44336),
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
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
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
                fontFamily: 'Roboto',
              ),),
          SizedBox(
            height: 10.0,
          ),
          Text('Friday, June 18, 2021',
          style: TextStyle(
            fontSize: 19.0,
            fontFamily: 'Roboto',
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
      padding: EdgeInsets.only(top: 48.0),
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
                fontFamily: 'Roboto',
                fontSize: 61.0,
              ),),

              Text('SUNNY',
                style: TextStyle(
                  fontFamily: 'Roboto',
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
                fontFamily: 'Roboto',
                fontSize: 21.0,
              ),),
              Text('km/hr', style: TextStyle(
                fontFamily: 'Roboto',
              ),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.wb_sunny_rounded,
                size: 35.0,),
              Text('98',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 21.0,
              ),),
              Text('%', style: TextStyle(
                fontFamily: 'Roboto',
              ),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.wb_cloudy_outlined,
                size: 35.0,),
              Text('2',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 21.0,
              ),),
              Text('%', style: TextStyle(
                fontFamily: 'Roboto',
              ),),
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
    return Padding(
      padding: const EdgeInsets.only(top: 53.0),
      child: Text('7-DAY WEATHER FORECAST',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20.0,
      ),),
    );
  }
}

class BottomDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 10.0),
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Container(
          width: 165.0,
          margin: EdgeInsets.only(left: 8.0),
          color: Color(0xFFE57373),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Saturday',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 28.0,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('29 °C',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 33.0,
                  ),),
                  Icon(Icons.wb_sunny, size: 45.0,),
                ],
              ),
            ],
          ),
        ),
          Container(
            width: 165.0,
            margin: EdgeInsets.only(left: 8.0),
            color: Color(0xFFE57373),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Sunday',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28.0,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('32 °C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 33.0,
                      ),),
                    Icon(Icons.wb_sunny, size: 45.0,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 165.0,
            margin: EdgeInsets.only(left: 8.0),
            color: Color(0xFFE57373),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Monday',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28.0,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('30 °C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 33.0,
                      ),),
                    Icon(Icons.wb_sunny, size: 45.0,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 165.0,
            margin: EdgeInsets.only(left: 8.0),
            color: Color(0xFFE57373),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Tuesday',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28.0,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('28 °C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 33.0,
                      ),),
                    Icon(Icons.wb_sunny, size: 45.0,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 165.0,
            margin: EdgeInsets.only(left: 8.0),
            color: Color(0xFFE57373),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Wednesday',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28.0,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('29 °C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 33.0,
                      ),),
                    Icon(Icons.wb_sunny, size: 45.0,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 165.0,
            margin: EdgeInsets.only(left: 8.0),
            color: Color(0xFFE57373),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Thursday',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28.0,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('30 °C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 33.0,
                      ),),
                    Icon(Icons.wb_sunny, size: 45.0,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 165.0,
            margin: EdgeInsets.only(left: 8.0),
            color: Color(0xFFE57373),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Friday',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28.0,
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('31 °C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 33.0,
                      ),),
                    Icon(Icons.wb_sunny, size: 45.0,),
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
