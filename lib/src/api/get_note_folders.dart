import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/src/core/http_client.dart';
import 'package:microsoft_graph/src/core/http_method.dart';
import 'package:microsoft_graph/src/core/http_request_message.dart';
import 'package:microsoft_graph/src/models/folder.dart';
import 'package:microsoft_graph/src/models/serializers.dart';

Stream<List<Folder>> getNoteFolders(IHttpClient httpClient) async* {
  var pageUrl = "https://graph.microsoft.com/beta/me/mailFolders/notes/childFolders";
  while (true) {
    final request = HttpRequestMessage(HttpMethod.Get, Uri.parse(pageUrl), []);
    final authenticatedRequest = await httpClient.authenticationProvider.authenticateRequest(request);
    final response = await httpClient.httpProvider.send(authenticatedRequest);

    Map<String, dynamic> json = jsonDecode(response.body);
    List<Folder> folders = new List();
    for (int i = 0; i < json["value"].length; i++) {
      final folder = serializers.deserialize(json["value"][i], specifiedType: const FullType(Folder));
      folders.add(folder);
    }
    yield folders;
    if (json["@odata.nextLink"] == null) {
      return;
    } else {
      pageUrl = json["@odata.nextLink"];
    }
  }
}
