import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var search = Icon(Icons.search);
    var setting = Icon(Icons.settings);
    var play = Icon(Icons.play_arrow);
    var pause = Icon(Icons.pause);
    var replay = Icon(Icons.replay);
    AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Souvik Video Player"),
            actions: <Widget>[
              IconButton(
                  icon: search,
                  onPressed: () => print("Search button pressed")),
              IconButton(
                  icon: setting,
                  onPressed: () => print("Setting button pressed"))
            ],
            backgroundColor: Colors.blue.shade900,
          ),
          body: Column(
            children: <Widget>[
              Container(
                  height: 250,
                  color: Colors.black12,
                  margin: EdgeInsets.all(10),
                  child: Image.network(
                      "https://raw.githubusercontent.com/souvikdutta7012/flutter_images/master/flutter2.jpg")),
              Container(
                height: 150,
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 70,
                      height: 100,
                      color: Colors.red.shade900,
                      child: IconButton(
                        icon: play,
                        onPressed: () async {
                          await audioPlayer.play('Casablanca.mp3');
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 70,
                      height: 100,
                      color: Colors.red.shade900,
                      child: IconButton(
                        icon: pause,
                        onPressed: () async {
                          await audioPlayer.pause();
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 70,
                      height: 100,
                      color: Colors.red.shade900,
                      child: IconButton(
                        icon: replay,
                        onPressed: () async {
                          await audioPlayer.stop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
