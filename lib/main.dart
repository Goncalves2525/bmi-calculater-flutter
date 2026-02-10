import 'package:bmi_calculater_flutter/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return ResultsPage(
            bmiResult: args['bmiResult']!,
            resultText: args['resultText']!,
            interpretation: args['interpretation']!,
          );
        },
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
