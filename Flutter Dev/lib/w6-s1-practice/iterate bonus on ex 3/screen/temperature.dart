import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white),
  );

  String? fahrenheitResult;
  String? CielciusResult;
  final TextEditingController CielciusController = TextEditingController();
  final TextEditingController temperatureController = TextEditingController();

  void convertToCielcius(){
    final String tempText = CielciusController.text;
    if( tempText.isNotEmpty){
      try{
      final double fahrenheit = double.parse(tempText);
      final double cielcius = (fahrenheit - 32) * 5/9;
      }catch(e){
      }
    }
  }

  void convertToFahrenheit() {
    final String tempText = temperatureController.text;
    if (tempText.isNotEmpty) {
      try {
        final double celsius = double.parse(tempText);
        final double fahrenheit = (celsius * 9 / 5) + 32;
        setState(() {
          fahrenheitResult = fahrenheit.toStringAsFixed(2);
        });
      } catch (e) {
        setState(() {
          fahrenheitResult = "Invalid input";
        });
      }
    } else {
      setState(() {
        fahrenheitResult = "No input provided";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.thermostat_outlined,
              size: 120,
              color: Colors.white,
            ),
            const Center(
              child: Text(
                "Converter",
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Temperature in Degrees:",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: temperatureController,
              decoration: inputDecoration,
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: convertToFahrenheit,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text("Convert"),
            ),
            const SizedBox(height: 30),
            const Text(
              "Temperature in Fahrenheit:",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: textDecoration,
              child: Text(
                fahrenheitResult ?? "Enter a value to see the result",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
