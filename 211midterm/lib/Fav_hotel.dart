import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


class FavHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
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
              color:Colors.white,
              onPressed: (){
                Navigator.pop(context);
              }
          ),
          title: Text('Favorite Hotels'),
        ),
        body: ListView(

          children: [
            Image.asset(
              'diamond.png',
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