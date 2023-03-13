import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmps/model/collection/collection_shift_model.dart';
import 'package:kmps/model/collection/collection_timing_model.dart';
import 'package:kmps/model/collection/milk_rate_model.dart';
import 'package:kmps/service/collection/add_collection_single_service.dart';
import 'package:kmps/service/collection/collection_shift_service.dart';
import 'package:kmps/service/collection/collection_timing_service.dart';
import 'package:kmps/service/collection/get_milk_rate_service.dart';

class AddCollectionController extends GetxController {
  var isLoading = true.obs;

  Rx<GetCollectionShift> getCollectionShift = GetCollectionShift().obs;

  Future getColletionShift() async {
    CollectionShiftService collectionShiftService = CollectionShiftService();
    try {
      var response = await collectionShiftService.getCollectionShift();
      if (response.statusCode == 200) {
        getCollectionShift.value = GetCollectionShift.fromJson(response.data);
        isLoading.value = false;
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }

  Rx<CollectionTimnigModel> collectionTimnigModel = CollectionTimnigModel().obs;

  Future getCollectionTiming() async {
    CollectionTimingService collectionTimingService = CollectionTimingService();

    try {
      var response = await collectionTimingService.getCollectionTimming();
      if (response.statusCode == 200) {
        collectionTimnigModel.value =
            CollectionTimnigModel.fromJson(response.data);
        isLoading.value = false;
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }

  Rx<MilkRate> milkRate = MilkRate().obs;

  Future getMilRate({
    required String milktype,
    required String fat,
    required String snf,
    required String ratetype,
  }) async {
    GetMilkRate getMilkRate = GetMilkRate();
    final date = {
      'milk_type': milktype,
      'fat': fat,
      'snf': snf,
      'rate_type': ratetype,
    };
    String jsonData = json.encode(date);

    try {
      var response = await getMilkRate.getMilkRate(jsonData);

      if (response.statusCode == 200) {
        milkRate.value = MilkRate.fromJson(response.data);
        isLoading.value = false;
      }
    } catch (e) {
      print(e.toString());
    }
    update();
  }

  Future addSingleCollection({
    required String id,
    required String print,
    required String milkType,
    required String qty,
    required String fat,
    required String snf,
    required String rate,
    required String totalAmount,
    required String shift,
  }) async {
   final AddCollectionSingle addCollectionSingle = AddCollectionSingle();

    final data = {
      'member_id': id,
      'print_slip': print,
      'milk_type': milkType,
      'qty': qty,
      'fat': fat,
      'snf': snf,
      'rate': rate,
      'total_amount': totalAmount,
      'shift': shift
    };

    String jsonData = json.encode(data);

    try {
      var response = await addCollectionSingle.addSingleCollection(jsonData);
      if (response.statusCode == 200) {
        isLoading.value = false;
      }
    } 
    catch (e) {

      // print(e.toString());

    }
    update();
  }



  String calculateCounterTime(String timeValue) {

  DateTime endTime = DateTime.parse(timeValue);

  Duration difference = endTime.difference(DateTime.now());
  Duration duration = Duration(milliseconds: 1000);

  int elapsedMilliseconds = 0;

  String twoDigits(int n) => n.toString().padLeft(2, "0");

  Timer.periodic(duration, (Timer timer) {
    elapsedMilliseconds += 1000;

    if (elapsedMilliseconds >= difference.inMilliseconds) {
      timer.cancel();
    }

    String formattedTime =
        "${twoDigits(difference.inMinutes.remainder(60))}:${twoDigits(difference.inSeconds.remainder(60))}";

    // return formattedTime;
  });

  String formattedTime =
      "${twoDigits(difference.inMinutes.remainder(60))}:${twoDigits(difference.inSeconds.remainder(60))}";

  return formattedTime;
}
}


class TimeCounter extends StatefulWidget {
  final DateTime time;
  TimeCounter({Key? key, required this.time}) : super(key: key);

  @override
  _TimeCounterState createState() => _TimeCounterState();
}

class _TimeCounterState extends State<TimeCounter> {
  late Timer _timer;
  Duration _duration = Duration();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) => _updateTimer());
  }

  void _updateTimer() {
    setState(() {
      final now = DateTime.now();
      _duration = now.difference(widget.time);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hours = _duration.inHours.toString().padLeft(2, '0');
    final minutes = (_duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_duration.inSeconds % 60).toString().padLeft(2, '0');
    return Text('$hours:$minutes:$seconds');
  }
}
