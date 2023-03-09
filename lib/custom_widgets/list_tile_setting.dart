import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/colors.dart';

class ListTileConstantSetting extends StatelessWidget {
  final String title;
  final String? icon;
  final Widget pageName;

  const ListTileConstantSetting({
    Key? key,
    required this.title,
    this.icon,
    required this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageName));
        },
        child: Container(
            padding:
                const EdgeInsets.all(20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15,
                  spreadRadius: 7,
                  offset: const Offset(0, 3))
            ], color: whiteColor, borderRadius: BorderRadius.circular(3)),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                SvgPicture.asset(
                  icon.toString(),
                ),
              ],
            )),
      ),
    );
  }
}

class ListTileConstantSettingSwitch extends StatelessWidget {
  final String title;
  final Widget pageName;
  final Widget? widget;
  const ListTileConstantSettingSwitch(
      {Key? key, required this.title, required this.pageName, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(

          padding:
          const EdgeInsets.all(20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 15,
                spreadRadius: 7,
                offset: const Offset(0, 3))
          ], color: whiteColor, borderRadius: BorderRadius.circular(3)),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageName));
                  },
                  child: Text(title)),
              widget!
            ],
          )),
    );
  }
}
