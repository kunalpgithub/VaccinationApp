import 'package:flutter/material.dart';

class WithOutLoginLayout extends StatelessWidget {
  final Widget? body;
  String backgroundImage;
  WithOutLoginLayout(
      {Key? key,
      this.body,
      this.backgroundImage = 'assets/images/pexels-anna-shvets-4588047.png'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                // colorFilter:
                //     ColorFilter.mode(Color(0xfffcd3d6), BlendMode.modulate),
                image: AssetImage(backgroundImage),
                fit: BoxFit.fill),
          ),
        ),
        Opacity(
          opacity: 0.25,
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.2],
                    colors: [Color(0xFFFF9A9E), Color(0xFFC2262C)])),
          ),
        ),
        if (ModalRoute.of(context)?.settings.name != '/')
          AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name != '/') {
                    Navigator.of(context).pop();
                  }
                  // Navigator.of(context).popUntil(
                  //     (route) => ModalRoute.of(context)?.settings.name == '/');
                },
                icon:
                    const Icon(Icons.arrow_back_ios, color: Color(0xffffffff)),
              )),
        Container(
          child: body,
        )
      ],
    );
  }
}
