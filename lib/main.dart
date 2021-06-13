import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Symlophone',
    home: SymlophoneApp(),
  ));
}

class SymlophoneApp extends StatelessWidget {

  Color mainThemeColor = Color(0xff393e46);
  Color subThemeColor = Color(0xffeeeeee);

  void playKey(int keyNo) {
    final player = AudioCache();
    player.play('audio/note$keyNo.wav');
  }

  Widget keyButton(int keyNo, String keyName, Color keyColor, Color textColor) {
    return Expanded(child:Padding(
      padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
      child: ElevatedButton(
        onPressed: (){
          playKey(keyNo);
        },
        child: Container(
          decoration: BoxDecoration(
            color: keyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(keyName,
            style: TextStyle(
              color: textColor,
              fontSize: 20.0,
            ),),
          ),
        ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0x00000000)),
            shadowColor: MaterialStateProperty.all<Color>(Color(0x00000000)),
            overlayColor: MaterialStateProperty.all<Color>(Color(0x00000000)),
          ),),
    ),);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            keyButton(1, 'C', mainThemeColor, subThemeColor),
            keyButton(2, 'D', subThemeColor, mainThemeColor),
            keyButton(3, 'E', mainThemeColor, subThemeColor),
            keyButton(4, 'F', subThemeColor, mainThemeColor),
            keyButton(5, 'G', mainThemeColor, subThemeColor),
            keyButton(6, 'A', subThemeColor, mainThemeColor),
            keyButton(7, 'B', mainThemeColor, subThemeColor),
          ],
        ),
      ),
    );
  }
}




//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
