import 'package:microsoft_graph/src/core/http_header.dart';
import 'package:microsoft_graph/src/core/http_method.dart';

class HttpRequestMessage {
  final HttpMethod httpMethod;
  final Uri uri;
  final List<HttpHeader> headers;

  HttpRequestMessage(this.httpMethod, this.uri, this.headers);
}