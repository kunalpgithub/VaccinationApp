import 'package:flutter/material.dart';

class WithOutLoginLayout extends StatelessWidget {
  final Widget? body;
  const WithOutLoginLayout({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(10.0),
          // gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     stops: [
          //       0.9,
          //       1.0,
          //     ],
          //     colors: [
          //       Color.fromARGB(1, 240, 22, 29),
          //       Colors.black
          //     ]),
          image: DecorationImage(
              // opacity: 0.7,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 227, 155, 157), BlendMode.modulate),
              image: AssetImage('assets/images/pexels-anna-shvets-4588047.png'),
              fit: BoxFit.none),
        ),
        child: Padding(padding: const EdgeInsets.only(top: 0), child: body));
  }
}
