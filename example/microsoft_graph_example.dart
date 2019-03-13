import 'package:microsoft_graph/microsoft_graph.dart';
import 'package:microsoft_graph_http/microsoft_graph_http.dart';
import 'dart:io' show Platform;

final String accessToken = Platform.environment["OAUTH_TOKEN"];
final IHttpClient httpClient = SimpleHttpClient(accessToken);

main() async {
  await for (var folderListInPage in getTaskFolders(httpClient)) {
    folderListInPage.forEach((folder) async {
      print(folder);
      await printTasksInFolders(folder);
    });
  }
}

printTasksInFolders(OutlookTaskFolder folder) async {
  final FolderId folderId = SpecificFolderId(folder.id, folder.name);
  await for (var taskListInPage in getTasks(httpClient, folderId)) {
    taskListInPage.forEach(print);
  }
}