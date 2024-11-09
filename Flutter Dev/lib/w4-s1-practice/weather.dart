import 'package:flutter/material.dart';

enum Day {
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY,
}

enum WeatherIcons {
  sunny(iconPath: 'assets/sunny.png'),
  cloudy(iconPath: 'assets/cloudy.png'),
  rainny(iconPath: 'assets/rainny.png'),
  windy(iconPath: 'assets/windy.png');

  final String iconPath;

  const WeatherIcons({required this.iconPath});
}

enum WeatherCondition {
  sunny(
      condition: 'Sunny',
      degree: 30,
      high: 33,
      low: 15,
      iconData: WeatherIcons.sunny),
  cloudy(
      condition: 'Cloudy',
      degree: 20,
      high: 25,
      low: 12,
      iconData: WeatherIcons.cloudy),
  windy(
      condition: 'Windy',
      degree: 25,
      high: 28,
      low: 22,
      iconData: WeatherIcons.windy),
  rainny(
      condition: 'Raining',
      degree: 18,
      high: 20,
      low: 16,
      iconData: WeatherIcons.rainny);

  final String condition;
  final num degree;
  final num high;
  final num low;
  final WeatherIcons iconData;
  const WeatherCondition(
      {required this.condition,
      required this.degree,
      required this.high,
      required this.low,
      required this.iconData});
}

class Card {
  final WeatherCondition weatherCondition;
  final Day day;

  const Card({required this.weatherCondition, required this.day});
}

class WeatherCard extends StatelessWidget {
  final Card cardData;

  WeatherCard({required this.cardData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 244, 244, 244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${cardData.day.toString().split('.').last}',
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 4),
          Image.asset(
            cardData.weatherCondition.iconData.iconPath,
            width: 300,
            height: 300,
          ),
          Text('${cardData.weatherCondition.degree}°C' ,style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.blueGrey,
            ),),
          Text(
              'High: ${cardData.weatherCondition.high}°C, Low: ${cardData.weatherCondition.low}°C', style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 16),),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Center(
      child: WeatherCardPager(),
    ),
  )));
}

class WeatherCardPager extends StatelessWidget {
  final List<Card> cards = [
    const Card(weatherCondition: WeatherCondition.sunny, day: Day.MONDAY),
    const Card(weatherCondition: WeatherCondition.cloudy, day: Day.TUESDAY),
    const Card(weatherCondition: WeatherCondition.windy, day: Day.WEDNESDAY),
    const Card(weatherCondition: WeatherCondition.rainny, day: Day.THURSDAY),
    const Card(weatherCondition: WeatherCondition.sunny, day: Day.FRIDAY),
    const Card(weatherCondition: WeatherCondition.cloudy, day: Day.SATURDAY),
    const Card(weatherCondition: WeatherCondition.windy, day: Day.SUNDAY),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical, 
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return WeatherCard(cardData: cards[index]);
      },
    );
  }
}
