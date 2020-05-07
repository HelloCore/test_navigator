import 'package:flutter/material.dart';
import 'package:test_navigator/screens/screen1.dart';
import 'package:test_navigator/screens/screen2.dart';
import 'package:test_navigator/screens/screen3.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class SubMainScreen extends StatefulWidget {
  @override
  _SubMainScreenState createState() => _SubMainScreenState();
}

class _SubMainScreenState extends State<SubMainScreen> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final String tag = "HELLO";
  final HeroController _heroController = HeroController();
  int _currentTabIndex = 0;

  _onTap(int tabIndex) {
    if (_currentTabIndex == tabIndex) {
      return;
    }
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState.pushReplacementNamed("1");
        break;
      case 1:
        _navigatorKey.currentState.pushReplacementNamed("2");
        break;
      case 2:
        _navigatorKey.currentState.pushReplacementNamed("3");
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: _navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: "1",
        observers: [_heroController],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        currentIndex: _currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('1'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('2'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('3'))
        ],
      ),
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "1":
        return MaterialPageRoute(
            builder: (context) => Screen1(
                  tag: tag,
                ));
      case "2":
        return MaterialPageRoute(builder: (context) => Screen2(tag: tag));
      default:
        return MaterialPageRoute(builder: (context) => Screen3(tag: tag));
    }
  }
}
