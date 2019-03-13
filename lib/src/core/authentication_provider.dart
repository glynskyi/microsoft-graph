import 'package:microsoft_graph/src/core/http_request_message.dart';

abstract class IAuthenticationProvider {

    Future<HttpRequestMessage> authenticateRequest(HttpRequestMessage requestMessage);
}