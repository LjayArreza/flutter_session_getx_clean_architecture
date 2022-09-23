enum ApiMethod { GET, POST, DELETE, PUT, PATCH }

extension HTTPMethodString on ApiMethod {
  String get string {
    switch (this) {
      case ApiMethod.GET:
        return "get";
      case ApiMethod.POST:
        return "post";
      case ApiMethod.DELETE:
        return "delete";
      case ApiMethod.PATCH:
        return "patch";
      case ApiMethod.PUT:
        return "put";
    }
  }
}

abstract class APIRequestRepresentable {
  String get url;
  String get endpoint;
  String get path;
  ApiMethod get method;
  Map<String, String>? get headers;
  Map<String, String>? get query;
  dynamic get body;
  Future request();
}
