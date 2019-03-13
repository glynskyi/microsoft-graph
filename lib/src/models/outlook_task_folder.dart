import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'outlook_task_folder.g.dart';

abstract class OutlookTaskFolder implements Built<OutlookTaskFolder, OutlookTaskFolderBuilder> {
  static Serializer<OutlookTaskFolder> get serializer => _$outlookTaskFolderSerializer;

  @nullable
  String get id;

  @nullable
  String get changeKey;

  @nullable
  String get name;

  @nullable
  bool get isDefaultFolder;

  @nullable
  String get parentGroupKey;

  OutlookTaskFolder._();

  factory OutlookTaskFolder([updates(OutlookTaskFolderBuilder b)]) = _$OutlookTaskFolder;
}
