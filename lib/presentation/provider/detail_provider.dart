import 'dart:convert';

import 'package:bukitvistaflutterassessment/data/model/booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../common/state_enum.dart';

class DetailProvider with ChangeNotifier {
  ResultState _detailState = ResultState.noData;
  List<Booking> _bookingList = <Booking>[];

  List<Booking> userBookList = <Booking>[];

  ResultState get detailState => _detailState;
  List<Booking> get bookingList => _bookingList;

  void fetchData() async {
    _detailState = ResultState.loading;
    notifyListeners();

    final String response =
        await rootBundle.loadString('lib/data/datasource/booking_data.json');
    Map<String, dynamic> data = await json.decode(response);

    _bookingList = List.from(
      data['booking'].map(
        (model) => Booking.fromJson(model),
      ),
    );
    _detailState = ResultState.hasData;
    notifyListeners();
  }

  void getUserBookingList(int userId) {
    _detailState = ResultState.loading;
    notifyListeners();

    for (var i in _bookingList) {
      if (i.userId == userId) {
        userBookList.add(i);
      }
    }
  }

  void resetUserBookingList() {
    userBookList = <Booking>[];
  }
}
