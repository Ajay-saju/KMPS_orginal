import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/analyzer.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/auto_fat_snf.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/auto_tare.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/auto_weight.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/general.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/kmps_info.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/rate.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/sms.dart';
import 'package:kmps/screen/drawer_screen/pages/Setting/setting_screens/weighting_sale.dart';

import '../../../../custom_widgets/list_tile_setting.dart';
import '../../drawer_widget.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool fatSnfValue = false;
  bool weightValue = false;
  bool autoSnfValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Settings',
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTileConstantSetting(
                  title: 'General',
                  pageName: General(),
                  icon: 'images/forword.svg',
                ),
                ListTileConstantSetting(
                  title: 'Weighning Scale',
                  pageName: WeighningScale(),
                  icon: 'images/forword.svg',
                ),
                ListTileConstantSetting(
                  title: 'Analyzer',
                  pageName: Analyzer(),
                  icon: 'images/forword.svg',
                ),
                ListTileConstantSetting(
                  title: 'SMS',
                  pageName: SMS(),
                  icon: 'images/forword.svg',
                ),
                ListTileConstantSettingSwitch(
                  title: 'Auto (FAT SNF)',
                  pageName: AutoFATSNF(),
                  widget: FlutterSwitch(
                    width: 60.0,
                    height: 30.0,
                    valueFontSize: 10,
                    toggleSize: 25.0,
                    value: fatSnfValue,
                    borderRadius: 25.0,
                    showOnOff: true,
                    onToggle: (value) {
                      setState(() {
                        fatSnfValue = value;
                      });
                    },
                  ),
                ),
                ListTileConstantSettingSwitch(
                  title: 'Auto (Weight)',
                  pageName: AutoWeight(),
                  widget: FlutterSwitch(
                    width: 60.0,height: 30.0,
                    valueFontSize: 10,
                    toggleSize: 25.0,
                    value: weightValue,
                    borderRadius: 25.0,
                    showOnOff: true,
                    onToggle: (value) {
                      setState(() {
                        weightValue = value;
                      });
                    },
                  ),
                ),
                ListTileConstantSettingSwitch(
                  title: 'Auto Tare (Weighing Scale)',
                  pageName: AutoTare(),
                  widget: FlutterSwitch(
                    width: 60.0,
                    height: 30.0,
                    valueFontSize: 10,
                    toggleSize: 25.0,
                    value: autoSnfValue,
                    borderRadius: 25.0,
                    showOnOff: true,
                    onToggle: (value) {
                      setState(() {
                        autoSnfValue = value;
                      });
                    },
                  ),
                ),
                ListTileConstantSetting(
                  title: 'Rate',
                  pageName: Rate(),
                ),
                ListTileConstantSetting(
                  title: 'KMPS info',
                  pageName: KmpsInfo(),
                ),
              ],
            ),
          ),
        ));
  }
}
