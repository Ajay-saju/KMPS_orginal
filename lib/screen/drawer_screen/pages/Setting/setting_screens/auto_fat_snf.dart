import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../drawer_widget.dart';

class AutoFATSNF extends StatefulWidget {
  const AutoFATSNF({Key? key}) : super(key: key);

  @override
  State<AutoFATSNF> createState() => _AutoFATSNFState();
}

class _AutoFATSNFState extends State<AutoFATSNF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Auto (FAT SNF)',
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
