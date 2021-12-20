import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rive Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('MyPage'),
        ),
        body: ListView(
          children: [

            Container(
              child: MyRiveAnimation(),
            ),
            Container(
              child: Text(
                'Eunjin Kim',
                style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child:Text(
                '21900174',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyRiveAnimation extends StatefulWidget {
  @override
  _MyRiveAnimationState createState() => _MyRiveAnimationState();
}

class _MyRiveAnimationState extends State<MyRiveAnimation> {
  final riveFileName = 'assets/knight063.riv';
  Artboard _artboard;
  RiveAnimationController _dayController;
  bool _day = false;

  @override
  void initState() {
    _loadRiveFile();
    super.initState();
  }

  // loads a Rive file
  void _loadRiveFile() async {
    final bytes = await rootBundle.load(riveFileName);
    final file = RiveFile();

    if (file.import(bytes)) {
      // Select an animation by its name
      setState(() => _artboard = file.mainArtboard
        ..addController(
          SimpleAnimation('idle'),
        ));
    }
  }

  void _dayChange(bool dayOn) {
    print(dayOn);
    if (dayOn == true) {
      setState(() {
        print(dayOn);
        _artboard.addController(_dayController = SimpleAnimation('day_night'));
        _day = dayOn;
      });
    } else {
      setState(() {
        _artboard.addController(_dayController = SimpleAnimation('night_day'));
        _day = dayOn;
      });
    }
  }

  /// Show the rive file, when loaded
  @override
  Widget build(BuildContext context) {
    // print(_day);
    return _artboard != null
        ? Column(
            children: [
              SizedBox(
                width: 300,

                child: ClipOval(
                  child: Align(
                    // heightFactor: 0.7,
                    // widthFactor: 0.5,

                    child: Rive(
                      artboard: _artboard,
                      fit: BoxFit.fill,
                    ),
                  ),
                  clipper: MyClipper(),
                ),
              ),
              SizedBox(

                height: 30,
                width: 140,
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.wb_sunny),
                      Switch(
                        //title: const Text('Wipers'),
                        value: _day,
                        onChanged: _dayChange,

                      ),
                      Icon(Icons.nightlight_round),
                    ],
                  ),
                ),

              ),
            ],
          )
        : Container();
  }
}

class MyClipper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(20, 0, size.width - 50, size.height - 40);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
