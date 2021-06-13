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

  static const Color mainThemeColor = Color(0xff393e46);
  static const Color subThemeColor = Color(0xffeeeeee);

  void playKey(int keyNo) {
    final player = AudioCache();
    player.play('audio/note$keyNo.wav');
  }

  Widget keyButton({int keyNo=0, String keyName='', Color keyColor=mainThemeColor, Color textColor=subThemeColor}) {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            keyButton(keyNo: 1, keyName: 'C', keyColor: mainThemeColor, textColor: subThemeColor),
            keyButton(keyNo: 2, keyName: 'D', keyColor: subThemeColor, textColor: mainThemeColor),
            keyButton(keyNo: 3, keyName: 'E', keyColor: mainThemeColor, textColor: subThemeColor),
            keyButton(keyNo: 4, keyName: 'F', keyColor: subThemeColor, textColor: mainThemeColor),
            keyButton(keyNo: 5, keyName: 'G', keyColor: mainThemeColor, textColor: subThemeColor),
            keyButton(keyNo: 6, keyName: 'A', keyColor: subThemeColor, textColor: mainThemeColor),
            keyButton(keyNo: 7, keyName: 'B', keyColor: mainThemeColor, textColor: subThemeColor),
          ],
        ),
      ),
    );
  }
}
