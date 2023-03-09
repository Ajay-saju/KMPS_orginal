import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../drawer_widget.dart';

class KmpsInfo extends StatefulWidget {
  const KmpsInfo({Key? key}) : super(key: key);

  @override
  State<KmpsInfo> createState() => _KmpsInfoState();
}

class _KmpsInfoState extends State<KmpsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'KMPS info',
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
