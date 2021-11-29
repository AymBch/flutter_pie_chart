import 'package:flutter/material.dart';
import 'package:flutter_pie_chart/src/flutter_pie_chart_painter.dart';
import 'package:flutter_pie_chart/src/pie.dart';

class FlutterPieChart extends StatefulWidget {
  FlutterPieChart({
    Key? key,
    required this.pies,
    required this.selected,
    this.animationDuration = const Duration(milliseconds: 1000),
  }) : super(key: key) {
    assert(selected < pies.length,
        "The selected pie must be in the pies list range!!");
  }
  final List<Pie> pies;
  final int selected;
  final Duration animationDuration;
  @override
  _FlutterPieChartState createState() => _FlutterPieChartState();
}

class _FlutterPieChartState extends State<FlutterPieChart>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  AnimationController? controller;
  double _animFraction = 0.0;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    final Animation curve = CurvedAnimation(
      parent: controller!,
      curve: Curves.easeInOutBack,
    );
    animation =
        Tween<double>(begin: 0, end: 1).animate(curve as Animation<double>)
          ..addListener(() {
            setState(() {
              _animFraction = animation.value;
            });
          });
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CustomPaint(
        painter: FlutterPieChartPainter(
          pies: widget.pies,
          selected: widget.selected,
          animFraction: _animFraction,
        ),
      ),
    );
  }
}
