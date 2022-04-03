import 'package:flutter/material.dart';

class WithOutLoginLayout extends StatelessWidget {
  final Widget? body;
  const WithOutLoginLayout({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         colorFilter: ColorFilter.mode(Colors.pink, BlendMode.softLight),
        //         image: AssetImage('assets/images/cake_small.jpg'),
        //         fit: BoxFit.cover)),
        child: Padding(padding: const EdgeInsets.only(top: 0), child: body));
  }
}
