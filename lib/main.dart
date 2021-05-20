import 'package:flutter/material.dart';
import 'package:flutter_application_integration_test/place_type_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'globals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Integration Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuChoice _viewChoice = MenuChoice.listView;

  @override
  Widget build(BuildContext context) {
    /// Generates the ListTile with Details
    Widget _buildListItemCardUi(PlaceTypes item, BuildContext context) {
      return Card(
        elevation: 0,
        // color: Color(0xfff8c300),
        margin: EdgeInsets.symmetric(
          // vertical: 8,
          horizontal: 10,
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                print('Tile Pressed : ${item.id}');
              },
              leading: IconButton(
                icon: item.icon,
                onPressed: () {
                  print('Tile Pressed : ${item.id}');
                },
              ),
              title: Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                key: Key('${item.title}'),
              ),
              trailing: IconButton(
                icon: FaIcon(FontAwesomeIcons.chevronRight),
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 1,
              height: 2,
            )
          ],
        ),
      );
    }

    /// Generates the ListTile with Details
    Widget _buildGridItemCardUi(PlaceTypes item, BuildContext context) {
      return GestureDetector(
        onTap: () {
          print('Tile Pressed : ${item.id}');
        },
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Card(
            elevation: 0,
            margin: EdgeInsets.symmetric(
              vertical: 1,
              horizontal: 1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: item.icon,
                  onPressed: () {
                    print('Tile Pressed : ${item.id}');
                  },
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    }

    /// this method is used to change selection
    MenuChoice swapChoice(MenuChoice homeViewChoice) {
      if (homeViewChoice == MenuChoice.gridView) {
        return MenuChoice.listView;
      } else if (homeViewChoice == MenuChoice.listView) {
        return MenuChoice.gridView;
      }
      return MenuChoice.gridView;
    }

    /// this method is used to return icon as per current selection
    _getIconForHomeViewChoice(MenuChoice homeViewChoice) {
      return Icon(
        homeViewChoice == MenuChoice.listView
            ? Icons.grid_view
            : Icons.format_list_bulleted_rounded,
      );
    }

    // build app bar action icons for individual screen
    List<Widget> _buildActionsWidget() {
      var actionWidgets = <Widget>[];

      // add Job board switch view icon in actionBar
      actionWidgets.add(
        IconButton(
          key: Key('list_grid_switcher'),
          tooltip: 'Switch Job Board view',
          icon: _getIconForHomeViewChoice(_viewChoice),
          onPressed: () {
            setState(() {
              _viewChoice = swapChoice(_viewChoice);
            });
            print('toggle Pressee : $_viewChoice');
          },
        ),
      );

      return actionWidgets;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: _buildActionsWidget(),
        centerTitle: true,
      ),
      body: Container(
        child: (_viewChoice == MenuChoice.gridView)
            ? GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(
                  Globals.typesList.length,
                  (index) {
                    return _buildGridItemCardUi(
                        Globals.typesList[index], context);
                  },
                ),
              )
            : ListView.builder(
                key: Key('category_list'),
                // padding: EdgeInsets.only(bottom: 150),
                itemCount: Globals.typesList.length,
                itemBuilder: (context, index) =>
                    _buildListItemCardUi(Globals.typesList[index], context),
              ),
      ),
    );
  }
}
