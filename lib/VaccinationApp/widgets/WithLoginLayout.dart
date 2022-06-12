import 'package:flutter/material.dart';

import 'EllipsePainter.dart';

class WithLoginLayout extends StatelessWidget {
  final Widget? body;
  const WithLoginLayout({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications,
                color: Theme.of(context).primaryColor),
          ),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.search, color: Theme.of(context).primaryColor)),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.arrow_drop_down_circle,
                  color: Theme.of(context).primaryColor)),
        ],
      ),
      drawer: const Drawer(),
      body: body,
      // CustomPaint(
      //   size: Size.infinite,
      //   painter: EllipsePainter(color: Colors.black),
      //   child: body,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Calendar')
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
