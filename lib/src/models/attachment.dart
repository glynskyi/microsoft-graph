import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attachment.g.dart';

abstract class Attachment implements Built<Attachment, AttachmentBuilder> {
  static Serializer<Attachment> get serializer => _$attachmentSerializer;

  @nullable
  String get id;

  @nullable
  String get name;

  @nullable
  String get contentId;

  @nullable
  String get contentBytes;

  @nullable
  String get contentType;

  Attachment._();

  factory Attachment([updates(AttachmentBuilder b)]) = _$Attachment;
}
