import 'package:backgrounds_custom_painter/src/pages/animations_page.dart';
import 'package:backgrounds_custom_painter/src/pages/home.dart';
import 'package:backgrounds_custom_painter/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class DashboardPage extends StatefulWidget {
  final String uid;

  const DashboardPage({Key key, this.uid}) : super(key: key);
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>   {

  final color_1 = Color.fromRGBO(128, 207, 169, 1.0);
  final color_2 = Color.fromRGBO(250, 169, 22, 1.0);
  final color_3 = Color.fromRGBO(88, 160, 206, 1.0);
  final color_4 = Color.fromRGBO(242, 66, 54, 1.0);
  final inactiveColor = Color.fromRGBO(0, 32, 49, 1.0);


  int _currentIndex = 0;

  final List<Widget> pages = [

    Home(),
    AnimationPage(),
    // Reserve(),
    // Profile(),

  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239,239,239, 1.0),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: myTheme.primaryColor,
        backgroundColor: Colors.white,
        elevation: 10.0,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.wall),
            title: Text('Backgrounds'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.chartBubble),
            title: Text('Animations'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_down),
            title: Text('Favoritas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.art_track),
            title: Text('Perfil'),
          ),
        ],
      ),
    );
  }

}

