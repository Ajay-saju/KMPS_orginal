import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../drawer_widget.dart';

class AutoTare extends StatefulWidget {
  const AutoTare({Key? key}) : super(key: key);

  @override
  State<AutoTare> createState() => _AutoTareState();
}

class _AutoTareState extends State<AutoTare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Auto Tare (Weighing Scale)',
        ),
        actions: [
          SvgPicture.asset(
            'images/notification.svg',
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          )
        ],
      ),
      drawer: const DrawerWidgets(),
    );
  }
}
