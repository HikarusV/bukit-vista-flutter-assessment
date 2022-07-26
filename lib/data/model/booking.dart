class Booking {
  Booking({
    required this.bookId,
    required this.status,
    required this.userId,
    required this.checkIn,
    required this.checkOut,
  });
  late final String bookId;
  late final int status;
  late final int userId;
  late final String checkIn;
  late final String checkOut;

  Booking.fromJson(Map<String, dynamic> json) {
    bookId = json['book_id'];
    status = json['status'];
    userId = json['user_id'];
    checkIn = json['check_in'];
    checkOut = json['check_out'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['book_id'] = bookId;
    data['status'] = status;
    data['user_id'] = userId;
    data['check_in'] = checkIn;
    data['check_out'] = checkOut;
    return data;
  }
}
