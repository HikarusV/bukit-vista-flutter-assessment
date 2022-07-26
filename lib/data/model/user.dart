class User {
  User({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.city,
    required this.country,
    required this.email,
    required this.phone,
    required this.firstFollow,
  });
  late final int id;
  late final String name;
  late final String photoUrl;
  late final String city;
  late final String country;
  late final String email;
  late final String phone;
  late final String firstFollow;

  User.fromJson(Map<String, dynamic> json) {
    id = json['user_id'];
    name = json['name'];
    photoUrl = json['photo_url'];
    city = json['city'];
    country = json['country'];
    email = json['email'];
    phone = json['phone'];
    firstFollow = json['first_follow'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user_id'] = id;
    data['name'] = name;
    data['photo_url'] = photoUrl;
    data['city'] = city;
    data['country'] = country;
    data['email'] = email;
    data['phone'] = phone;
    data['first_follow'] = firstFollow;
    return data;
  }
}
