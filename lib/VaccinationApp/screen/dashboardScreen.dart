import 'package:flutter/material.dart';

import '../widgets/WithLoginLayout.dart';
import '../widgets/EllipsePainter.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WithLoginLayout(body: Center(child: Text('Dashboard fixed')));
  }
}
