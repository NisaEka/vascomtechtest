class LoginModel {
  LoginModel({
      String? token, 
      String? error,}){
    _token = token;
    _error = error;
}

  LoginModel.fromJson(dynamic json) {
    _token = json['token'];
    _error = json['error'];
  }
  String? _token;
  String? _error;
LoginModel copyWith({  String? token,
  String? error,
}) => LoginModel(  token: token ?? _token,
  error: error ?? _error,
);
  String? get token => _token;
  String? get error => _error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['error'] = _error;
    return map;
  }

}