import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';
import '../utils/reusable_text.dart';

class MemberScreenContainer extends StatefulWidget {
  final String heading;
  final String subheading;
  final String phoneNumber;
  final String dateOfBirth;
  final String mCode;
  const MemberScreenContainer(
      {Key? key,
      required this.heading,
      required this.subheading,
      required this.phoneNumber,
      required this.dateOfBirth,
      required this.mCode})
      : super(key: key);

  @override
  State<MemberScreenContainer> createState() => _MemberScreenContainerState();
}

class _MemberScreenContainerState extends State<MemberScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        height: 140,
        width: double.infinity,
        color: const Color(0xffD4E2FE),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText.reusableText(
                    title: widget.heading,
                    weight: FontWeight.bold,
                    color: buttonColors1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ReusableText.reusableText(
                    title: widget.subheading,
                    size: 16,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ReusableText.reusableText(
                    title: widget.phoneNumber,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ReusableText.reusableText(
                    title: widget.dateOfBirth,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ReusableText.reusableText(
                          title: 'M.Code',
                          size: 12,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ReusableText.reusableText(
                          title: widget.mCode,
                          weight: FontWeight.bold,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'images/edit.svg',
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'images/cross.svg',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
