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
      debugShowCheckedModeBanner: false,
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
  AnimatedButtonController _controller = AnimatedButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //inverted selection button bar
          AnimatedButtonBar(
            radius: 8.0,
            padding: const EdgeInsets.all(16.0),
            invertedSelection: true,
            children: [
              ButtonBarEntry(
                  onTap: () => print('First item tapped'), child: Text('Day')),
              ButtonBarEntry(
                  onTap: () => print('Second item tapped'),
                  child: Text('Week')),
              ButtonBarEntry(
                  onTap: () => print('Third item tapped'),
                  child: Text('Month')),
              ButtonBarEntry(
                  onTap: () => print('Fourth item tapped'), child: Text('Year'))
            ],
          ),
          //You can populate it with different types of widgets like Icon
          AnimatedButtonBar(
            radius: 32.0,
            padding: const EdgeInsets.all(16.0),
            backgroundColor: Colors.blueGrey.shade800,
            foregroundColor: Colors.blueGrey.shade300,
            elevation: 24,
            borderColor: Colors.white,
            borderWidth: 2,
            innerVerticalPadding: 16,
            children: [
              ButtonBarEntry(
                  onTap: () => print('First item tapped'),
                  child: Icon(Icons.person)),
              ButtonBarEntry(
                  onTap: () => print('Second item tapped'),
                  child: Icon(Icons.people)),
            ],
          ),
          AnimatedButtonBar(
            controller: _controller,
            radius: 32.0,
            padding: const EdgeInsets.all(16.0),
            backgroundColor: Colors.blueGrey.shade800,
            foregroundColor: Colors.blueGrey.shade300,
            elevation: 24,
            borderColor: Colors.white,
            borderWidth: 2,
            innerVerticalPadding: 16,
            children: [
              ButtonBarEntry(
                  onTap: () => print('First item tapped'),
                  child: Icon(Icons.sunny)),
              ButtonBarEntry(
                  onTap: () => print('Second item tapped'),
                  child: Icon(Icons.nightlight_round)),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _controller.setIndex(_controller.index == 0 ? 1 : 0);
              },
              child: Text('Set index'))
        ],
      ),
    );
  }
}
