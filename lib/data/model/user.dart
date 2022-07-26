class User {
  User({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.photoUrl,
    required this.city,
    required this.country,
    required this.email,
    required this.phone,
    required this.firstFollow,
  });
  late final int userId;
  late final String firstName;
  late final String lastName;
  late final String fullName;
  late final String photoUrl;
  late final String city;
  late final String country;
  late final String email;
  late final String phone;
  late final String firstFollow;

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
    photoUrl = json['photo_url'];
    city = json['city'];
    country = json['country'];
    email = json['email'];
    phone = json['phone'];
    firstFollow = json['first_follow'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['full_name'] = fullName;
    _data['photo_url'] = photoUrl;
    _data['city'] = city;
    _data['country'] = country;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['first_follow'] = firstFollow;
    return _data;
  }
}
