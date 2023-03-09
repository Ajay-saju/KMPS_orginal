import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../custom_widgets/memberscreen_container.dart';
import '../../../../utils/colors.dart';
import '../../drawer_widget.dart';
import 'add_member.dart';

class Members extends StatefulWidget {
  const Members({Key? key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          actions: [
            SvgPicture.asset(
              'images/notification.svg',
            ),
            const SizedBox(
              width: 20,
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Members'),
        ),
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddMember()));
          },
          child: const CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff2867AA),
              child: Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const DrawerWidgets(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50, vertical: 20),
                height: 80,
                width: double.infinity,
                color: const Color(0xffEEEEFA),
                child: Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: buttonColors1, width: 0.5)),
                  child: const TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(left: 10, top: 10),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: ' Search',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MemberScreenContainer(
                heading: 'Manan Rabari',
                subheading: 'Junagadh',
                phoneNumber: 'Ph.: 9998444111',
                dateOfBirth: 'Birth Date: 23/01/1980',
                mCode: '0001',
              ),
              const SizedBox(
                height: 20,
              ),
              const MemberScreenContainer(
                heading: 'Manan Rabari',
                subheading: 'Junagadh',
                phoneNumber: 'Ph.: 9998444111',
                dateOfBirth: 'Birth Date: 23/01/1980',
                mCode: '0002',
              ),
              const SizedBox(
                height: 20,
              ),
              const MemberScreenContainer(
                heading: 'Manan Rabari',
                subheading: 'Junagadh',
                phoneNumber: 'Ph.: 9998444111',
                dateOfBirth: 'Birth Date: 23/01/1980',
                mCode: '0003',
              ),
              const SizedBox(
                height: 20,
              ),
              const MemberScreenContainer(
                heading: 'Manan Rabari',
                subheading: 'Junagadh',
                phoneNumber: 'Ph.: 9998444111',
                dateOfBirth: 'Birth Date: 23/01/1980',
                mCode: '0009',
              ),
            ],
          ),
        ));
  }
}
