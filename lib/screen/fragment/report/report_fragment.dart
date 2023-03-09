import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kmps/screen/drawer_screen/drawer_widget.dart';
import 'package:kmps/screen/drawer_screen/pages/payment/payment_list.dart';
import 'package:kmps/screen/fragment/report/report_screen/dispatch_report1.dart';
import 'package:kmps/screen/fragment/report/report_screen/kgfat_summery.dart';
import 'package:kmps/screen/fragment/report/report_screen/localsale_ladger_report.dart';
import 'package:kmps/screen/fragment/report/report_screen/memberladger.dart';
import 'package:kmps/screen/fragment/report/report_screen/payment_report.dart';
import 'package:kmps/screen/fragment/report/report_screen/shift_report.dart';

import '../../../custom_widgets/list_tile_report.dart';
import '../../../utils/colors.dart';
import 'report_screen/collection_summary.dart';

class ReportFragment extends StatefulWidget {
  const ReportFragment({Key? key}) : super(key: key);

  @override
  State<ReportFragment> createState() => _ReportFragmentState();
}

class _ReportFragmentState extends State<ReportFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      appBar: AppBar(
        titleSpacing: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              'images/notification.svg',
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Report'),
      ),
      drawer: const DrawerWidgets(),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: const [
            ListTileConstant(
              pageName: ShiftReport(),
              title: 'Shift Report',
              icon: "images/ShiftReport.svg",
            ),
            ListTileConstant(
              pageName: CollectionSummary(),
              title: 'Collection Summery',
              icon: 'images/Collectionsummary.svg',
            ),
            ListTileConstant(
              pageName: DispatchReport(),
              title: 'Dispatch Report',
              icon: 'images/Dispatch.svg',
            ),
            ListTileConstant(
              pageName: PaymentReport(),
              title: 'Payment Report',
              icon: 'images/Paymentreport.svg',
            ),
            ListTileConstant(
              pageName: MemberLedgerReport(),
              title: 'Member ladger',
              icon: 'images/MemberLadger.svg',
            ),
            ListTileConstant(
              pageName: KgfatSummery(),
              title: 'KgFAT KgSNF Summary',
              icon: 'images/Kgfat.svg',
            ),
            ListTileConstant(
              pageName: LocalSaleLadgerReport(),
              title: 'Local Sale Ladger',
              icon: 'images/Localsaleladger.svg',
            ),
            ListTileConstant(
              pageName: PaymentList(),
              title: 'Local Sale',
              icon: 'images/Localsale2.svg',
            ),
          ],
        )),
      ),
    );
  }
}
