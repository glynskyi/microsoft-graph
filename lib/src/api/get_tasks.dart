import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/microsoft_graph.dart';
import 'package:microsoft_graph/src/core/http_client.dart';
import 'package:microsoft_graph/src/core/http_method.dart';
import 'package:microsoft_graph/src/core/http_request_message.dart';
import 'package:microsoft_graph/src/models/folder_id.dart';
import 'package:microsoft_graph/src/models/outlook_task.dart';
import 'package:microsoft_graph/src/models/serializers.dart';

Stream<List<OutlookTask>> getTasks(IHttpClient httpClient, FolderId folderId) async* {
  var pageUrl;
  if (folderId is WellKnownFolderId) {
    pageUrl = "https://graph.microsoft.com/beta/me/outlook/${folderId.name}";
  } else if (folderId is SpecificFolderId) {
    pageUrl = "https://graph.microsoft.com/beta/me/outlook/taskFolders/${folderId.id}/tasks";
  } else {
    throw Exception("Unknown folderId: $folderId");
  }

  while (true) {
    final request = HttpRequestMessage(HttpMethod.Get, Uri.parse(pageUrl), []);
    final authenticatedRequest = await httpClient.authenticationProvider.authenticateRequest(request);
    final response = await httpClient.httpProvider.send(authenticatedRequest);

    Map<String, dynamic> json = jsonDecode(response.body);
    List<OutlookTask> tasks = new List();
    for (int i = 0; i < json["value"].length; i++) {
      final task = serializers.deserialize(json["value"][i], specifiedType: const FullType(OutlookTask));
      tasks.add(task);
    }
    yield tasks;
    if (json["@odata.nextLink"] == null) {
      return;
    } else {
      pageUrl = json["@odata.nextLink"];
    }
  }
}