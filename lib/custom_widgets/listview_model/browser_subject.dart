import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/utils/reusable_text.dart';

import 'subject_model.dart';

class ModelDetail extends StatefulWidget {
  const ModelDetail({Key? key}) : super(key: key);

  @override
  State<ModelDetail> createState() => _ModelDetailState();
}

class _ModelDetailState extends State<ModelDetail> {
  @override
  Widget build(BuildContext context) {
    final List<Browse> cow = [
      Browse(
        image: 'images/MemberDasb.svg',
        title: 'Poured Member',
      ),
      Browse(
        image: 'images/MemberDasb.svg',
        title: 'Pending Member',
      )
    ];
    String dropdownvalue = 'Jigar Rabari';
    var items = [
      'Jigar Rabari',
      'Jigar Rabari 1',
      'Jigar Rabari 2',
    ];
    return Row(
      children: [
        SvgPicture.asset(
          'images/Notification.svg',
        ),
        DropdownButton(
          underline: Container(),
          isExpanded: true,
          value: dropdownvalue,
          alignment: Alignment.center,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: [
            DropdownMenuItem(
                value: items,
                child: ReusableText.reusableText(
                  title: cow.length.toString(),
                  size: 15,
                )),
            DropdownMenuItem(
                value: items,
                child: ReusableText.reusableText(
                  title: cow.length.toString(),
                  size: 15,
                ))
          ],
          onChanged: (Object? value) {},
        ),
      ],
    );
  }
}
