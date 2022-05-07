import 'package:flutter/material.dart';

class WithLoginLayout extends StatelessWidget {
  final Widget? body;
  const WithLoginLayout({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        actions: const <Widget>[
          IconButton(onPressed: null, icon: Icon(Icons.notifications)),
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.arrow_drop_down_circle)),
        ],
      ),
      drawer: const Drawer(),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        // shape: const CircularNotchedRectangle(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Calendar')
        ],
        // child: Container(
        //   height: 50.0,
        //   child: const IconButton(onPressed: null, icon: Icon(Icons.home)),
        // ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
