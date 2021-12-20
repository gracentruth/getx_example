/*
import 'package:flutter/material.dart';




class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(0),

      child: Column(
        children: [

         Row(
           children:[
             Icon(
               Icons.star_border,
               color: Colors.yellow[500],
             ),
             Icon(
               Icons.star_border,
               color: Colors.yellow[500],
             ),
             Icon(
               Icons.star_border,
               color: Colors.yellow[500],
             ),

      ]

         ),

          Container(
            //padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'KIM EUN JIN2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),


          /*3*/


        ],
      ),
    );
    Color color = Colors.black;


    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.message,size:40.0),
          Expanded(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                  child: Text(
                    'Recent Message',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                  child: Text(
                    'Long time no see!',
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
          )


        ],
      ),



    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(

        appBar:AppBar(
          title:Text("Detail2"),
          leading:IconButton(
            icon:Icon(Icons.arrow_back_sharp),
            onPressed: ()=>Navigator.pop(context),
          ),


        ),//기본 material design visual layout구조를 구현하는 위

        body: ListView(
          children:[
            Image.asset(
              'images/IMG_2885.jpeg',
              width:600,
              height:240,
              fit: BoxFit.cover,
            ),
            titleSection,
            // const Divider(
            //   //indent:20,
            //   height: 1.0,
            //   color: Colors.black,
            // ),

            //textSection,
          ],
        ),
      ),

    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Icon(icon, color: color),
        Container(
          // margin: const EdgeInsets.only(top: 8),
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}

 */


import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class Data{
  final int index;
  Data(this.index);
}

class Detail1 extends StatelessWidget{

  final List<Data> datas;

  Detail1({Key key, @required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20.0),
      child:


      Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.fromLTRB(0,10,20,20),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                        'hello'
                      ),

                    ),


                  ],

                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],


                ),
              ],
            ),
          ),
          /*3*/


        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;



    Widget textSection = Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(

        appBar: AppBar(
          leading:IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('Detail'),
        ),
        body: ListView(

          children: [
            Image.asset(
              "assets/hotel1.png",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

        Container(
          padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
          child: Row(
              children:[
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[500],
                ),

              ]
          ),
        ),


            titleSection,

            const Divider(
             indent: 20.0,
              endIndent: 20.0,

              height: 1.0,
              color: Colors.black38,
            ),

            textSection,
          ],
        ),
      ),
    );
  }


}

class Detail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20.0),
      child:


      Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.fromLTRB(0,10,20,20),
                  child: Text(
                    'hotel2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],

                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],


                ),
              ],
            ),
          ),
          /*3*/


        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;



    Widget textSection = Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(

        appBar: AppBar(
          leading:IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('Detail'),
        ),
        body: ListView(

          children: [
            Image.asset(
              "assets/hotel2.png",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
              child: Row(
                  children:[
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),

                  ]
              ),
            ),


            titleSection,

            const Divider(
              indent: 20.0,
              endIndent: 20.0,

              height: 1.0,
              color: Colors.black38,
            ),

            textSection,
          ],
        ),
      ),
    );
  }


}


class Detail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20.0),
      child:


      Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.fromLTRB(0,10,20,20),
                  child: Text(
                    'hotel3',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],

                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],


                ),
              ],
            ),
          ),
          /*3*/


        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;



    Widget textSection = Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(

        appBar: AppBar(
          leading:IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('Detail'),
        ),
        body: ListView(

          children: [
            Image.asset(
              "assets/hotel3.png",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
              child: Row(
                  children:[
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),

                  ]
              ),
            ),


            titleSection,

            const Divider(
              indent: 20.0,
              endIndent: 20.0,

              height: 1.0,
              color: Colors.black38,
            ),

            textSection,
          ],
        ),
      ),
    );
  }


}


class Detail4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20.0),
      child:


      Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.fromLTRB(0,10,20,20),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],

                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      child:Text(
                          'hello'
                      ),

                    ),


                  ],


                ),
              ],
            ),
          ),
          /*3*/


        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;



    Widget textSection = Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(

        appBar: AppBar(
          leading:IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('Detail'),
        ),
        body: ListView(

          children: [
            Image.asset(
              "assets/hotel1.png",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
              child: Row(
                  children:[
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                    ),

                  ]
              ),
            ),


            titleSection,

            const Divider(
              indent: 20.0,
              endIndent: 20.0,

              height: 1.0,
              color: Colors.black38,
            ),

            textSection,
          ],
        ),
      ),
    );
  }


}