import 'package:flutter/cupertino.dart';

TableRow reusableTableRow(
    {required Color backgroundColor,
    required Color textColor,
    required fontWeight,
    required double fontSize,
    required List lst}) {
  return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      children: List.generate(lst.length, (index) {
        return TableCell(
          child: Container(
              height: 30,
              width: 22,
              padding: const EdgeInsets.all(3),
              child: Center(
                child: FittedBox(
                  child: Text(
                    lst[index],
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                  ),
                ),
              )),
        );
      }));
}
