import 'dart:async';
import 'package:flutter/material.dart';

import 'dart:js' as js;
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

//void main() {
//  runApp(
//    Center(
//      child: Directionality(textDirection: TextDirection.ltr, child:
//          RaisedButton(
//            onPressed: _launchURL,
//          child: Text('Open http://feb19.jp', textDirection: TextDirection.ltr),
//        ),
//      ),
//    ),
//  );
//}
//
//_launchURL() {
//  js.context.callMethod("open", ["http://feb19.jp/"]);
//}

void main() => runApp(HelloworldApp());
const kHtml = """<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
<p>A paragraph with <strong>strong</strong> <em>emphasized</em> text.</p>

<p>And of course, cat image:</p>
<figure>
  <img src="https://media.giphy.com/media/6VoDJzfRjJNbG/giphy-downsized.gif" width="250" height="171" />
  <figcaption>Source: <a href="https://gph.is/QFgPA0">https://gph.is/QFgPA0</a></figcaption>
</figure>
""";

class HelloworldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1 秒ごとに実行
//    Timer.periodic(new Duration(seconds: 1), (timer) {
//      debugPrint(timer.tick.toString());
//    });
    Text text = Text('hello world', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)), textDirection: TextDirection.ltr);
    Image image = Image.asset('images/maru.jpg');


//    Positioned potisioned1 = Positioned(
//      top: 150.0,
//      child: Text("Text#1", textDirection: TextDirection.ltr,),
//    );
//    Positioned positioned2 = Positioned(
//      top: 100.0,
//      child: Stack(
//        children: [
//          Positioned(
//            child: Text("Text#2", textDirection: TextDirection.ltr),
//          )
//        ],
//      ),
//    );


//    FlatButton button = FlatButton(
//      child: Text("Button", textDirection: TextDirection.ltr,),
//      onPressed: () {
//        js.context.callMethod("open", ["https://stackoverflow.com/"]);
//      },
//    );

//    Stack stack = Stack(
//      children: <Widget>[
//        text,
//      ],
//    );

//    Column column = Column(
//      children: <Widget>[
//        button
//      ],
//    )


    Stack column = Stack(
      children: <Widget>[
//        stack,
        Align(
            alignment: Alignment.topLeft,
            child: text
        ),
        Align(
            alignment: Alignment.topRight,
            child: text
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),

      ],
    );
    Container container = Container(width: 320, height: 320, child:  Directionality(textDirection: TextDirection.ltr, child: column),);
//
//    HtmlWidget html = HtmlWidget(kHtml,
//        onTapUrl: (url) => showDialog(
//          context: context,
//          builder: (_) => AlertDialog(
//            title: Text('onTapUrl'),
//            content: Text(url),
//          ),
//        ));
//
//    return Directionality(textDirection: TextDirection.ltr, child: html);
//    SizedBox(
//        width: 250,
//        height: 250, child: column);//Center(child: column);
    return container;
  }

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}