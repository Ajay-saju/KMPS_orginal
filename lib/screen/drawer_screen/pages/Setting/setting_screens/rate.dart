import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/rate/rate_grade.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/rate/rate_list.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/rate/upload_rate_chart.dart';

import '../../../../../custom_widgets/list_tile_setting.dart';
import '../../../drawer_widget.dart';

class Rate extends StatefulWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Rate Entry',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            ListTileConstantSetting(
              title: 'Rate Grade',
              icon: 'images/forword.svg',
              pageName: RateGrade(),
            ),
            ListTileConstantSetting(
              title: 'Upload Rate Chart',
              icon: 'images/forword.svg',
              pageName: UploadRateChart(),
            ),
            ListTileConstantSetting(
              title: 'Rate List',
              icon: 'images/forword.svg',
              pageName: RateList(),
            )
          ],
        ),
      ),
    );
  }
}
