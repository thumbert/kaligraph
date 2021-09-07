import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
          title: 'Kaligraph -- Timeseries visualization and analytics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {}, // TODO: implement help
              tooltip: 'Help',
              icon: const Icon(Icons.help_outline))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: makeWindows(_counter),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add window',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> makeWindows(int counter) {
    if (counter == 1) {
      return <Widget>[
        Flexible(
          flex: 7,
          child: Container(
            color: Colors.grey[300],
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.lime,
          ),
        )
      ];
    } else if (counter == 2) {
      return <Widget>[
        Flexible(
          flex: 7,
          child: Container(
            color: Colors.grey[300],
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.lime,
          ),
        )
      ];
    } else {
      print('Not implemented yet!');
      return <Widget>[];
    }
  }
}
