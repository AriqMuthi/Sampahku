class Login {
  int? code;
  bool? status;
  String? token;
  String? userID;
  String? userPoint;
  String? userEmail;

  Login(
      {this.code,
      this.status,
      this.token,
      this.userID,
      this.userPoint,
      this.userEmail});
  factory Login.fromJson(Map<String, dynamic> obj) {
    return Login(
        code: obj['code'],
        status: obj['status'],
        token: obj['data']['token'],
        userID: obj['data']['user']['id'],
        userPoint: obj['data']['user']['point'],
        userEmail: obj['data']['user']['email']);
  }
}
