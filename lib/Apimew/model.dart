
import 'dart:convert';

class User {
  List<Result> results;

  User({
    required this.results,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  String gender;
  Name name;
  String email;
  Dob dob;
  String phone;
  Picture picture;
  String nat;

  Result({
    required this.gender,
    required this.name,
    required this.email,
    required this.dob,
    required this.phone,
    required this.picture,
    required this.nat,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    gender: json["gender"],
    name: Name.fromJson(json["name"]),
    email: json["email"],
    dob: Dob.fromJson(json["dob"]),
    phone: json["phone"],
    picture: Picture.fromJson(json["picture"]),
    nat: json["nat"],
  );

  Map<String, dynamic> toJson() => {
    "gender": gender,
    "name": name.toJson(),
    "email": email,
    "dob": dob.toJson(),
    "phone": phone,
    "picture": picture.toJson(),
    "nat": nat,
  };
}

class Dob {
  int age;

  Dob({
    required this.age,
  });

  factory Dob.fromRawJson(String str) => Dob.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dob.fromJson(Map<String, dynamic> json) => Dob(
    age: json["age"],
  );

  Map<String, dynamic> toJson() => {
    "age": age,
  };
}

class Name {
  String title;
  String first;
  String last;

  Name({
    required this.title,
    required this.first,
    required this.last,
  });

  factory Name.fromRawJson(String str) => Name.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    title: json["title"],
    first: json["first"],
    last: json["last"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "first": first,
    "last": last,
  };
}

class Picture {
  String large;
  String medium;
  String thumbnail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory Picture.fromRawJson(String str) => Picture.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
    large: json["large"],
    medium: json["medium"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "large": large,
    "medium": medium,
    "thumbnail": thumbnail,
  };
}
