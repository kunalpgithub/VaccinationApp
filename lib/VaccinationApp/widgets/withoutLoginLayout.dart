import 'package:flutter/material.dart';

class WithOutLoginLayout extends StatelessWidget {
  final Widget? body;
  const WithOutLoginLayout({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 227, 155, 157), BlendMode.modulate),
                  image: AssetImage(
                      'assets/images/pexels-anna-shvets-4588047.png'),
                  fit: BoxFit.none),
            ),
            child:
                Padding(padding: const EdgeInsets.only(top: 0), child: body)),
        Opacity(
          opacity: 0.25,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.7, 0.8],
                    colors: [Color(0xFFFF9A9E), Color(0xFFC2262C)])),
          ),
        ),
        Container(
          child: body,
        )
      ],
    );
  }
}
