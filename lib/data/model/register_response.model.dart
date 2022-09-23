class RegisterResponseModel {
  RegisterResponseModel({
    required this.id,
    required this.token,
  });
  late final int id;
  late final String token;

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['token'] = token;
    return _data;
  }
}
