import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folder.g.dart';

abstract class Folder implements Built<Folder, FolderBuilder> {
  static Serializer<Folder> get serializer => _$folderSerializer;

  @nullable
  String get id;

  @nullable
  String get displayName;

  Folder._();

  factory Folder([updates(FolderBuilder b)]) = _$Folder;
}
