class registerrequestmodel {
  late final String username;
  late final String email;
  late final String password;

  registerrequestmodel({required this.username, required this.email, required this.password});

  registerrequestmodel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
