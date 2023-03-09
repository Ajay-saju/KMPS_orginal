import 'package:flutter/cupertino.dart';

TableRow reusableTableRowWithLine(
    {required Color backgroundColor,
    required Color textColor,
    required fontWeight,
    required Color borderColor,
    required double fontSize,
    required List lst}) {
  return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      children: List.generate(lst.length, (index) {
        return TableCell(
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: borderColor, width: 0.5))),
              height: 30,
              width: 20,
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
        );
      }));
}
