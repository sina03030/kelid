class ApiResponse {
  final dynamic response;
  ApiResponse({this.response});
}

class Success {
  final String? message;
  Success({this.message});
}

class Failure {
  final String? message;
  Failure({this.message});
}