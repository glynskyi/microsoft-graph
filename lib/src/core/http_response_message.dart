import 'package:microsoft_graph/src/core/http_header.dart';

class HttpResponseMessage {
  final int statusCode;
  final List<HttpHeader> headers;
  final String body;

  HttpResponseMessage(this.statusCode, this.headers, this.body);
}