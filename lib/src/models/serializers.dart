import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:microsoft_graph/microsoft_graph.dart';
import 'package:microsoft_graph/src/models/outlook_task_folder.dart';
import 'package:microsoft_graph/src/serialization/date_serializer.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor(const [Folder, OutlookTaskFolder, Attachment, Message, OutlookTask])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(GraphIso8601DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
