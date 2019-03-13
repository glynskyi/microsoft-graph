import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/src/core/http_client.dart';
import 'package:microsoft_graph/src/core/http_method.dart';
import 'package:microsoft_graph/src/core/http_request_message.dart';
import 'package:microsoft_graph/src/models/folder_id.dart';
import 'package:microsoft_graph/src/models/message.dart';
import 'package:microsoft_graph/src/models/serializers.dart';

final _endpoint = "https://graph.microsoft.com/v1.0/me";
final _expand = "\$expand=attachments(\$select=id,name,contentType)";

Stream<List<Message>> getNotes(IHttpClient httpClient, FolderId folderId) async* {
  var pageUrl;
  if (folderId is WellKnownFolderId) {
    pageUrl = "$_endpoint/mailFolders/${folderId.name}/messages?$_expand";
  } else if (folderId is SpecificFolderId) {
    pageUrl = "$_endpoint/mailFolders/${folderId.id}/messages?$_expand";
  } else {
    throw Exception("Unknown folderId: $folderId");
  }

  while (true) {
    final request = HttpRequestMessage(HttpMethod.Get, Uri.parse(pageUrl), []);
    final authenticatedRequest = await httpClient.authenticationProvider.authenticateRequest(request);
    final response = await httpClient.httpProvider.send(authenticatedRequest);

    Map<String, dynamic> json = jsonDecode(response.body);
    List<Message> notes = new List();
    for (int i = 0; i < json["value"].length; i++) {
      final message = serializers.deserialize(json["value"][i], specifiedType: const FullType(Message));
      notes.add(message);
    }
    yield notes;
    if (json["@odata.nextLink"] == null) {
      return;
    } else {
      pageUrl = json["@odata.nextLink"];
    }
  }
}
