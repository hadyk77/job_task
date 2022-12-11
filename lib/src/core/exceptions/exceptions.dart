class CustomException implements Exception {
  final String? message;

  CustomException([this.message]);
}

class GeneralException extends CustomException {
  @override
  String? get message => "something went wrong";
}

class CustomFormatException extends CustomException {
  @override
  String? get message => "Json Format is invalid please check it again";
}
