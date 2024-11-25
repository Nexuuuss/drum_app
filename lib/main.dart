import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  var application = Application();
  runApp(application);
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return runMyApplication();
  }
}

Widget runMyApplication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/miku.jpg'),
              // fit: BoxFit.cover,
            ),
          ),
          child: getMyBody(),
        ),
      ),
    ),
  );
}

Widget getMyBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('ara.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('dick.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('oni.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('ought.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('pause.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('yamete.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

playsound(String sound) {
  var player = AudioPlayer();
  player.play(
    AssetSource(sound),
  );
}
