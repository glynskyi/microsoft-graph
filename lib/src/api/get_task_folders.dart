import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/src/core/http_client.dart';
import 'package:microsoft_graph/src/core/http_method.dart';
import 'package:microsoft_graph/src/core/http_request_message.dart';
import 'package:microsoft_graph/src/models/outlook_task_folder.dart';
import 'package:microsoft_graph/src/models/serializers.dart';

Stream<List<OutlookTaskFolder>> getTaskFolders(IHttpClient httpClient) async* {
  var pageUrl = "https://graph.microsoft.com/beta/me/outlook/taskFolders";
  while (true) {
    final request = HttpRequestMessage(HttpMethod.Get, Uri.parse(pageUrl), []);
    final authenticatedRequest = await httpClient.authenticationProvider.authenticateRequest(request);
    final response = await httpClient.httpProvider.send(authenticatedRequest);

    Map<String, dynamic> json = jsonDecode(response.body);
    List<OutlookTaskFolder> folders = new List();
    for (int i = 0; i < json["value"].length; i++) {
      final folder = serializers.deserialize(json["value"][i], specifiedType: const FullType(OutlookTaskFolder));
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
