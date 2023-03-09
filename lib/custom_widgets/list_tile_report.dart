import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/colors.dart';

class ListTileConstant extends StatefulWidget {
  final String title;
  final String icon;
  final Widget pageName;
  const ListTileConstant(
      {Key? key,
      required this.title,
      required this.icon,
      required this.pageName})
      : super(key: key);

  @override
  State<ListTileConstant> createState() => _ListTileConstantState();
}

class _ListTileConstantState extends State<ListTileConstant> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => widget.pageName));
        },
        child: Container(
            padding:
                const EdgeInsets.only(left: 25, top: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 15,
                  spreadRadius: 7,
                  offset: const Offset(0, 3))
            ], color: whiteColor, borderRadius: BorderRadius.circular(3)),
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffFFF7E8)),
                  height: 90,
                  width: 90,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFCB22E)),
                    child: SvgPicture.asset(
                      widget.icon,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
