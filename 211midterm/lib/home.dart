import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

import 'package:intl/intl.dart';

import 'model/products_repository.dart';
import 'model/product.dart';

const _url = 'https://www.handong.edu/';



void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final appTitle = 'Main';

  List<bool> isSelected;

  final isSelected2 = <bool>[false, false];

  num countValue = 2;

  num aspectWidth = 1;
  num aspectHeight = 1.2;
  num aspectWidth2 = 1;
  num aspectHeight2 = 1;
  bool a = true;

  var hotels = [
    {"Name": "Polonia hotel", "loc": "Seoul Gangnam", "img": "assets/hotel1.png","index":"1"},
    {"Name": "Gyeongju Hilton", "loc": "Gyeongju", "img": "assets/hotel2.png","index":"2"},
    {"Name": "The Westin Grand", "loc": "Pohang Yangduk", "img": "assets/hotel3.png","index":"3"},
    {"Name": "Marianabay sand", "loc": "Singapor", "img": "assets/hotel4.png","index":"4"},
    {"Name": "Lahan", "loc": "Pohang Yeongildae", "img": "assets/hotel5.img","index":"5"},
    {"Name": "Olimpic parktel", "loc": "Seoul Jamsil", "img": "assets/hotel6.img","index":"6"},
  ];

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //구글이ㅣ 지향하는 material design을 사용할 수 있게 해주는 class
      title: 'Flutter layout demo',
      home: Scaffold(
        //기본 material design visual layout구조를 구현하는 위
        appBar: AppBar(
          title: Center(
            child: Text('Main'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print(context);
                  Navigator.pushNamed(context, '/search');
                },
                icon: Icon(Icons.search),
                color: Colors.white),
            IconButton(
              //onPressed: _launchURL,
              icon: Icon(Icons.language),
              color: Colors.white,
            )
          ],
        ),
        body: SafeArea(
            child: Center(
          child: Scaffold(
              body: Column(children: [
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(10),
              child: ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: Color(0xFF6200EE),
                selectedBorderColor: Color(0xFF6200EE),
                fillColor: Color(0xFF6200EE).withOpacity(0.08),
                splashColor: Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                isSelected: isSelected2,
                onPressed: (int index) {
                  print(index);
                  if (index == 0) {
                    setState(() {
                      countValue = 1;
                      aspectWidth = 6.0;
                      aspectHeight = 3.0;
                      aspectWidth2 = 6.0;
                      aspectHeight2 = 2.0;
                    });
                  } else {
                    setState(() {
                      countValue = 2;
                      aspectWidth = 1;
                      aspectHeight = 1.2;
                      aspectWidth2 = 1;
                      aspectHeight2 = 1;
                    });
                  }
                },
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(Icons.list),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(Icons.grid_view),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: countValue,
                childAspectRatio: (aspectWidth / aspectHeight),
                children: hotels
                    .map((hotel) => GestureDetector(
                          //onTap: (){getGridViewSelectedItem(context, data);},
                          child: Container(
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: Column(
                              // TODO: Center items on the card (103)
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  height: 100,
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.all(0),
                                  child: AspectRatio(
                                    aspectRatio: (1 / 1.2),
                                    child: Container(
                                      padding: EdgeInsets.all(0),
                                      child: Image.asset(
                                        hotel['img'],
                                        // TODO: Adjust the box size (102)

                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.star,
                                                color: Colors.yellow,
                                                size: 20.0),
                                            Icon(Icons.star,
                                                color: Colors.yellow,
                                                size: 20.0),
                                            Icon(Icons.star,
                                                color: Colors.yellow,
                                                size: 20.0),
                                          ],
                                        ),
                                        Text(hotel['Name']),
                                        //SizedBox(height: 8.0),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.location_on_rounded,
                                                color: Colors.blue),
                                            Text(hotel['loc']),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(0),
                                              width: 80,
                                              height: 30,
                                              child: TextButton(
                                                child: Text('more'),
                                                onPressed: () {
                                                  print(hotel['index']);
                                                  String a="/detail"+hotel['index'];
                                                  Navigator.pushNamed(
                                                      context,a);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ])),
        )),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Pages'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('Favorite Hotel'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/favhotel');
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Page'),
                onTap: () {
                  Navigator.pushNamed(context, '/mypage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
_launchURL() async{

  const url = 'https://www.handong.edu/';
  if(await canLaunch(url)){
    await launch(url);
  }else{
    throw 'Could not launch $url';
  }
}

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
*/
/*
class GridWidget extends StatefulWidget{

  GridViewState createState() => GridViewState();
}

class GridViewState extends State{

  final isSelected = <bool>[false, false];

  num countValue = 2 ;
  num aspectWidth=1;
  num aspectHeight=1;
  num aspectWidth2=1;
  num aspectHeight2=1;

  var hotels =[
    {"Name": "", "loc": "2","img":"assets/diamond.img"},
    {"Name": "3", "loc": "4","img":"assets/diamond.img"},
    {"Name": "5", "loc": "6","img":"assets/diamond.img"},
    {"Name": "7", "loc": "8","img":"assets/diamond.img"},
    {"Name": "1", "loc": "12","img":"assets/diamond.img"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.all(7),
                padding: EdgeInsets.all(10),
                child: ToggleButtons(

                  color: Colors.black.withOpacity(0.60),
                  selectedColor: Color(0xFF6200EE),
                  selectedBorderColor: Color(0xFF6200EE),
                  fillColor: Color(0xFF6200EE).withOpacity(0.08),
                  splashColor: Color(0xFF6200EE).withOpacity(0.12),
                  hoverColor: Color(0xFF6200EE).withOpacity(0.04),
                  borderRadius: BorderRadius.circular(4.0),
                  isSelected: isSelected,
                  onPressed: (int index){
                    print(index);
                    if(index == 0){
                        setState(() {
                         countValue = 1 ;
                          aspectWidth = 6.0 ;
                          aspectHeight = 3.0;
                         aspectWidth2 = 6.0 ;
                         aspectHeight2 = 2.0;

                        });}
                      else{
                        setState(() {
                         countValue = 2 ;
                          aspectWidth = 3.0 ;
                          aspectHeight = 3.0 ;
                         aspectWidth2 = 3.0 ;
                         aspectHeight2 = 2.0;


                        });
                      }

                  },
                  children: <Widget>[
                    // Icon(Icons.grid_view),
                    // Icon(Icons.list),
                    //Icon(Icons.notifications),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.list),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.grid_view),
                    ),


                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: countValue,
                  childAspectRatio: (aspectWidth / aspectHeight),
                 // padding: EdgeInsets.all(16.0),
                  children:
                  /*_buildGridCards(context),*/

                  hotels.map(
                          (hotel) =>

                    // gridItems2.map((data2) =>

                      GestureDetector(
                          //onTap: (){getGridViewSelectedItem(context, data);},
                          child: Container(
                            margin: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.black,width:0.3),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0)),
                            ),
                            child: Column(


                              // TODO: Center items on the card (103)
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                AspectRatio(
                                  aspectRatio: (2/1),
                                  child: Image.asset(
                                   // hotel['img'],
                                    "assets/diamond.img",
                                    width:10,
                                      height:10,
                                    // TODO: Adjust the box size (102)
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0,0,0,0),
                                    child: Column(
                                      // TODO: Align labels to the bottom and center (103)
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      // TODO: Change innermost Column (103)
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.star,color:Colors.yellow),
                                            Icon(Icons.star,color:Colors.yellow),
                                            Icon(Icons.star,color:Colors.yellow),

                                        ],
                                        ),
                                        // TODO: Handle overflowing labels (103)
                                        Text(
                                            hotel['Name']
                                        ),
                                        //SizedBox(height: 8.0),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.location_on_rounded,color:Colors.blue),

                                            Text(
                                                hotel['loc']
                                            ),
                                            ElevatedButton(
                                              child: Text('NEXT'),
                                              onPressed: () {
                                                print(context);
                                                Navigator.pushNamed(,'/detail');

                                              },
                                            ),



                                          ],
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                      )
                  ).toList(),
                ),),


            ]));
  }

}

*/
