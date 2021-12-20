// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'detail.dart';
import 'search.dart';
import 'mypage.dart';
import 'Fav_hotel.dart';


// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: HomePage(),
      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Pass _currentCategory for frontLayer (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      routes:{

        '/signuppage': (BuildContext context) => SignUp(),
        '/detail1': (BuildContext context) => Detail1(),
        '/detail2': (BuildContext context) => Detail2(),
        '/detail3': (BuildContext context) => Detail3(),
        '/detail4': (BuildContext context) => Detail4(),
        '/homepage':(BuildContext context) => HomePage(),
        '/search':(BuildContext context) => Search(),
        '/mypage':(BuildContext context) => MyPage(),
        '/favhotel':(BuildContext context) => FavHotel(),
        '/login':(BuildContext context) => LoginPage(),

      }

      // TODO: Add a theme (103)
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );


  }
}



