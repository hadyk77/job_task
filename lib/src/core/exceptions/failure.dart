class Failure implements Exception {
  final dynamic message;
  final int? code;
  Map<String, dynamic>? messageArray;
  Failure({this.message, this.messageArray, this.code});

  @override
  String toString() {
    Object message = this.message;

    return "Exception: $message";
  }
}

class FormatFailure extends Failure {
  FormatFailure({String? message}) : super(message: message);
}
