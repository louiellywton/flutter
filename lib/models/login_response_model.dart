import 'dart:convert';

loginresponsemodel loginResponseModel(String str) =>
    loginresponsemodel.fromJson(json.decode(str));

class loginresponsemodel {
  late final String message;
  late final Data data;

  loginresponsemodel({required this.message, required this.data});

  loginresponsemodel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  late final String username;
  late final String email;
  late final String date;
  late final String id;
  late final String token;

  Data(
      {required this.username,
      required this.email,
      required this.date,
      required this.id,
      required this.token});

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    date = json['date'];
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['date'] = this.date;
    data['id'] = this.id;
    data['token'] = this.token;
    return data;
  }
}
