class Booking {
  Booking({
    required this.bookId,
    required this.status,
    required this.userId,
    required this.guest,
    required this.bookValue,
    required this.checkInYear,
    required this.checkInMonth,
    required this.checkInDate,
    required this.checkInHour,
    required this.longDay,
    required this.checkOutYear,
    required this.checkOutMonth,
    required this.checkOutDate,
    required this.checkOutHour,
    required this.nameProfile,
    required this.host,
  });
  late final String bookId;
  late final int status;
  late final int userId;
  late final int guest;
  late final String bookValue;
  late final int checkInYear;
  late final int checkInMonth;
  late final int checkInDate;
  late final String checkInHour;
  late final int longDay;
  late final int checkOutYear;
  late final int checkOutMonth;
  late final int checkOutDate;
  late final String checkOutHour;
  late final String nameProfile;
  late final String host;

  Booking.fromJson(Map<String, dynamic> json) {
    bookId = json['book_id'];
    status = json['status'];
    userId = json['user_id'];
    guest = json['guest'];
    bookValue = json['book_value'];
    checkInYear = json['check_in_year'];
    checkInMonth = json['check_in_month'];
    checkInDate = json['check_in_date'];
    checkInHour = json['check_in_hour'];
    longDay = json['long_day'];
    checkOutYear = json['check_out_year'];
    checkOutMonth = json['check_out_month'];
    checkOutDate = json['check_out_date'];
    checkOutHour = json['check_out_hour'];
    nameProfile = json['name_profile'];
    host = json['host'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['book_id'] = bookId;
    data['status'] = status;
    data['user_id'] = userId;
    data['guest'] = guest;
    data['book_value'] = bookValue;
    data['check_in_year'] = checkInYear;
    data['check_in_month'] = checkInMonth;
    data['check_in_date'] = checkInDate;
    data['check_in_hour'] = checkInHour;
    data['long_day'] = longDay;
    data['check_out_year'] = checkOutYear;
    data['check_out_month'] = checkOutMonth;
    data['check_out_date'] = checkOutDate;
    data['check_out_hour'] = checkOutHour;
    data['name_profile'] = nameProfile;
    data['host'] = host;
    return data;
  }
}
