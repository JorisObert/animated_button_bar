import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedButtonBar',
      theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: SampleView(),
    );
  }
}

class SampleView extends StatefulWidget {
  @override
  _SampleViewState createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedButtonBar(
            radius: 16.0,
            padding: const EdgeInsets.all(16.0),
            children: [
              ButtonBarEntry(onTap: () => print('First item tapped'), child: Text('Day')),
              ButtonBarEntry(onTap: () => print('Second item tapped'), child: Text('Week')),
              ButtonBarEntry(onTap: () => print('Third item tapped'), child: Text('Month')),
              ButtonBarEntry(onTap: () => print('Fourth item tapped'), child: Text('Year'))
            ],
          ),
        ],
      ),
    );
  }
}
