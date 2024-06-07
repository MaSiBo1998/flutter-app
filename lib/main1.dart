// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/generated/assets.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(25),
            title: const Text(
              'testApp',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: const [
              // MyList()
              Flexible(
                  flex: 1, // 可以调整比例
                  child: MyAbout()),
              // Flexible(
              //     flex: 2, // 可以调整比例
              //     child: MyList()),
            ],
          ))));
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      width: 200,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black, width: 2)),
      child: const Text(
        '测试按钮',
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow),
            borderRadius: BorderRadius.circular(30)),
        child: const Text('测    2试'),
      ),
    );
  }
}

class MyAbout extends StatelessWidget {
  const MyAbout({super.key});
  List<Widget> _initList() {
    // List<Widget> tempList = [];
    // for (var i = 0; i < listData.length; i++) {
    //   tempList.add(ListTile(
    //     title: Text("${listData[i]["title"]}"),
    //     subtitle: Text("${listData[i]["author"]}"),
    //     leading: Image.network("${listData[i]["imageUrl"]}"),
    //   ));
    // }
    var tempList = listData.map((item) {
      return ListTile(
        title: Text("${item["title"]}"),
        subtitle: Text("${item["author"]}"),
        leading: Image.network("${item["imageUrl"]}"),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 63,
      ),
      Image.asset(
        Assets.imagesAppLogo,
        width: 103,
        height: 103,
        alignment: Alignment.center,
      ),
      const SizedBox(
        height: 30,
      ),
      const Text('v1.0.0', style: TextStyle(color: Colors.black)),
      const SizedBox(height: 24),
      Container(
        width: 292,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: const Text(
          'The app is committed to providing efficient, convenient, safe and intelligent loan integration services for the majority of borrowers to easily meet loan needs.',
          style: TextStyle(
            color: Color.fromRGBO(102, 102, 102, 1),
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
        child: ListView(
          children: _initList(),
        ),
      )
    ]));
  }
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${listData[index]["title"]}"),
                leading: Image.network("${listData[index]["imageUrl"]}"),
              );
            }));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
