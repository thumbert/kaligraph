library screens.plotting_window;

import 'package:flutter/material.dart';

class PlottingWindow extends StatefulWidget {
  PlottingWindow(this.id);
  final int id;

  @override
  State<StatefulWidget> createState() => _PlottingWindowState(id);
}

class _PlottingWindowState extends State<PlottingWindow> {
  _PlottingWindowState(this.id);
  final int id;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: selected
          ? const RoundedRectangleBorder(side: BorderSide(color: Colors.blue))
          : const RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent)),
      child: Container(
        child: Center(
          child: Text('Window $id'),
        ),
      ),
    );
  }
}
