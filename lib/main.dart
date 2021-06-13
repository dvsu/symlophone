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
