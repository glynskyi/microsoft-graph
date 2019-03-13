import 'package:microsoft_graph/src/core/http_request_message.dart';
import 'package:microsoft_graph/src/core/http_response_message.dart';

abstract class IHttpProvider {

  Future<HttpResponseMessage> send(HttpRequestMessage request);
}