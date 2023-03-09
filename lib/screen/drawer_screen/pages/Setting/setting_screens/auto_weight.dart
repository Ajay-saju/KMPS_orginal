import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../drawer_widget.dart';

class AutoWeight extends StatefulWidget {
  const AutoWeight({Key? key}) : super(key: key);

  @override
  State<AutoWeight> createState() => _AutoWeightState();
}

class _AutoWeightState extends State<AutoWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Auto (Weight)',
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
