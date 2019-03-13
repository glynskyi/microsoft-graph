import 'package:microsoft_graph/src/core/authentication_provider.dart';
import 'package:microsoft_graph/src/core/http_provider.dart';

abstract class IHttpClient {

  IHttpProvider get httpProvider;

  IAuthenticationProvider get authenticationProvider;
}