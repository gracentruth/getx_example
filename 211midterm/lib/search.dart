import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter/material.dart';

/// This is the main application widget.
class Search extends StatelessWidget {
  const Search({key}) : super(key: key);

  static const String _title = 'Search';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    @required this.expandedValue,
    @required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Row(
                children: [
                  Text(
                    'Filter',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(width: 50),
                  Container(
                    child: Text('select filter'),
                  ),
                ],
              ),
            );
          },
          body: Container(
            height: 200,
            width: 300,
            child: CheckboxWidget(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  Map<String, bool> values = {
    'No Kids Zone': false,
    'Pet-Friendly': false,
    'Free-breakfast': false,
  };
  var tmpArray = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    tmpArray.clear();
  }

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Container(

          child: ListView(
            children: values.keys.map((String key) {
              return new CheckboxListTile(
                value: values[key],
                title: new Text(key),
                activeColor: Colors.pink,
                checkColor: Colors.white,
                onChanged: (bool value) {
                  setState(() {
                    values[key] = value;
                  });
                },
              );
            }).toList(),
          ),

    ),


      ),
    ]);
  }
}
