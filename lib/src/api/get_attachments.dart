import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/src/core/http_client.dart';
import 'package:microsoft_graph/src/core/http_method.dart';
import 'package:microsoft_graph/src/core/http_request_message.dart';
import 'package:microsoft_graph/src/models/attachment.dart';
import 'package:microsoft_graph/src/models/serializers.dart';

Stream<List<Attachment>> getAttachments(IHttpClient httpClient, String noteId) async* {
  var pageUrl = "https://graph.microsoft.com/v1.0/me/messages/$noteId/attachments";
  while (true) {
    final request = HttpRequestMessage(HttpMethod.Get, Uri.parse(pageUrl), []);
    final authenticatedRequest = await httpClient.authenticationProvider.authenticateRequest(request);
    final response = await httpClient.httpProvider.send(authenticatedRequest);

    Map<String, dynamic> json = jsonDecode(response.body);
    List<Attachment> attachments = new List();
    for (int i = 0; i < json["value"].length; i++) {
      final attachment = serializers.deserialize(json["value"][i], specifiedType: const FullType(Attachment));
      attachments.add(attachment);
    }
    yield attachments;
    if (json["@odata.nextLink"] == null) {
      return;
    } else {
      pageUrl = json["@odata.nextLink"];
    }
  }
}
