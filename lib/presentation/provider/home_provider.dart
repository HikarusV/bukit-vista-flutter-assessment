import 'dart:convert';

import 'package:bukitvistaflutterassessment/common/state_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/model/user.dart';

class HomeProvider with ChangeNotifier {
  ResultState _homeState = ResultState.noData;
  List<User> _userList = <User>[];

  List<User> consumeUserList = <User>[];

  ResultState get homeState => _homeState;
  List<User> get userList => _userList;

  TextEditingController searchController = TextEditingController();

  void fetchData() async {
    _homeState = ResultState.loading;
    notifyListeners();

    Future.delayed(const Duration(seconds: 2));
    final String response =
        await rootBundle.loadString('lib/data/datasource/userdata.json');
    Map<String, dynamic> data = await json.decode(response);

    _userList = List.from(data['user'].map((model) => User.fromJson(model)));
    consumeUserList = _userList;
    _homeState = ResultState.hasData;
    notifyListeners();
  }

  void filteredList() {
    consumeUserList = consumeUserList.reversed.toList();
    notifyListeners();
  }

  void serachByName(String key) {
    consumeUserList = [];
    for (var i in _userList) {
      if (i.fullName.contains(key)) {
        consumeUserList.add(i);
      }
    }
    notifyListeners();
  }
}
