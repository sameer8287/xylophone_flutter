import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/src/audio_cache.dart';
void main() {
  runApp( xylophone());
}
class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  void play(int a)
  {
    final player1 = AudioCache();
    player1.play('note$a.mp3');
  }
  Expanded buildkey(int ply, Color color)
  {
   return Expanded(
      child: TextButton(
       style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all<Color>(color)
             ),
        onPressed: ()
        {
          play(ply);
        },child: Text(''),

      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        // child: Center(
        //   child: TextButton(
        //
        //     onPressed: () {
        //       final player = AudioCache();
        //       player.play('note1.mp3');
        //     },
        //     child: Text('click here'),
        //   ),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1,Colors.red),
              buildkey(2,Colors.orange),
              buildkey(3,Colors.yellow),
              buildkey(4,Colors.green),
              buildkey(5,Colors.lightBlue),
              buildkey(6,Colors.blue),
              buildkey(7,Colors.indigo),
              // Expanded(
              //     child: TextButton(
              //       style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
              //       ),
              //       onPressed: () {
              //         play(1);
              //       }, child: Text(''),
              //
              //     ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)
              //     ),
              //
              //     onPressed: () {
              //       play(2);
              //
              //     }, child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)
              //     ),
              //     onPressed: () {
              //       play(3);
              //     }, child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent)
              //     ),
              //     onPressed: () {
              //       play(4);
              //     }, child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
              //     ),
              //     onPressed: () {
              //       play(5);
              //     }, child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              //     ),
              //     onPressed: () {
              //       play(5);
              //     }, child: Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple)
              //     ),
              //     onPressed: () {
              //       play(7);
              //     }, child: Text(''),
              //   ),
              // ),
            ],

          ),
        ),
      ),
    );
  }
}



