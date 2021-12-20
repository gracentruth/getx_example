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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 12.0),
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                // TODO: Add a beveled rectangular border to CANCEL (103)
                TextButton(
                  child: Text('Singn up'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    Navigator.pushNamed(context, '/signuppage');
                  },
                ),
                TextButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();

                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    Navigator.pushNamed(context,'/homepage');

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
class SignUp extends StatelessWidget {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(

      body: Form(
        key: _formKey,
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children : <Widget>[
              SizedBox(height: 60.0),
              TextFormField(

                decoration: InputDecoration(
                    filled:true,
                    border: UnderlineInputBorder(),
                    labelText: 'Username'
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.0),
              TextFormField(

                decoration: InputDecoration(
                    filled:true,
                    border: UnderlineInputBorder(),
                    labelText: 'Password'
                ),
                obscureText: true,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.0),
              TextFormField(

                decoration: InputDecoration(
                    filled:true,
                    border: UnderlineInputBorder(),
                    labelText: 'Confirm Password'
                ),
                obscureText: true,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Confirm Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.0),
              TextFormField(

                decoration: InputDecoration(
                    filled:true,
                    border: UnderlineInputBorder(),
                    labelText: 'Email Address'
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Email Address';
                  }
                  return null;
                },
              ),

              //  SizedBox(height:0.0,width:50.0),

              ButtonBar(
                children: <Widget>[
                  ElevatedButton(

                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('Processing Data')));
                      }


                      Navigator.pushNamed(context,'/login');



                    },
                    child: Text('Sign Up'),


                  ),

                ],
              ),



            ]

        ),

      ),

    );
  }
}



class Page4 extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(

    );
  }
}