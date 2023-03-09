import 'package:flutter/material.dart';

TableRow reusableTableRowDate(
    {required Color backgroundColor,
    required Color textColor,
    required fontWeight,
    required double fontSize,
    // required double width,
    required List lst}) {
  return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      children: List.generate(lst.length, (index) {
        return TableCell(
          child: FittedBox(
            child: Row(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      right: BorderSide(width: 1, color: Color(0xffFCB22E)),
                    )),
                    width: 80,
                    height: 20,
                    padding: const EdgeInsets.all(3),
                    child: Center(
                      child: Text(
                        lst[index],
                        style: TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        );
      }));
}
