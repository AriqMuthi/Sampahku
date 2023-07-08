class Update {
  int? code;
  bool? status;
  String? data;

  Update({this.code, this.status, this.data});

  factory Update.fromJson(Map<String, dynamic> obj) {
    return Update(code: obj['code'], status: obj['status'], data: obj['data']);
  }
}
