import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showFirstWidget = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!_showFirstWidget) {
          setState(() {
            _showFirstWidget = true;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: _showFirstWidget ? FirstWidget() : SecondWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _showFirstWidget = !_showFirstWidget;
            });
          },
          child: Icon(Icons.swap_horiz),
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'First Widget',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Second Widget',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
