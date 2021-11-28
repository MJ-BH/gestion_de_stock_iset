import 'package:flutter/material.dart';
import 'package:gestion_de_stock/app/ui/componnents/simple_dialog.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageView(),
    );
  }
}

class HomePageView extends StatefulWidget {
  HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page ")),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text('what to add'),
                    children: [
                      SimpleDialogItem(
                        icon: Icons.add,
                        color: Colors.orange,
                        text: 'famille',
                        onPressed: () {
                          Get.toNamed('/ajout', arguments: 'Famille');
                        },
                      ),
                      SimpleDialogItem(
                        icon: Icons.add,
                        color: Colors.green,
                        text: 'composant ',
                        onPressed: () {
                          Get.toNamed('/ajout', arguments: 'composant');
                        },
                      ),
                      SimpleDialogItem(
                        icon: Icons.add_circle,
                        color: Colors.grey,
                        text: 'Add account',
                        onPressed: () {
                          Get.toNamed('/ajout', arguments: 'personne');
                        },
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.tealAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amber.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          _onItemTapped(value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            icon: Icon(Icons.location_on),
          ),
        ],
        currentIndex: _selectedIndex,
      ),
    );
  }
}
