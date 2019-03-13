import 'package:microsoft_graph_http/microsoft_graph_http.dart';
import 'package:microsoft_graph/microsoft_graph.dart';
import 'package:test/test.dart';
import 'dart:io' show Platform;

void main() {
  final String accessToken = Platform.environment["OAUTH_TOKEN"];
  final IHttpClient httpClient = SimpleHttpClient(accessToken);

  group('A group of tests', () {
    setUp(() {});

    test('Get Notes Folders', () async {
      final folders = await getNoteFolders(httpClient).first;
      expect(folders.length, 5);
    });

    test('Get Tasks', () async {
      final folders = await getTasks(httpClient, WellKnownFolderId("tasks")).first;
      expect(folders.length, 5);
    });
  });
}
