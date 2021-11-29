import 'package:flutter/material.dart';
import 'package:flutter_pie_chart/flutter_pie_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter pie chart example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Pie> pies = [
    Pie(color: const Color(0xFFFF6262), proportion: 8),
    Pie(color: const Color(0xFFFF9494), proportion: 3),
    Pie(color: const Color(0xFFFFDCDC), proportion: 8),
  ];
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter pie chart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: deviceSize.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlutterPieChart(
                  pies: pies,
                  selected: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
