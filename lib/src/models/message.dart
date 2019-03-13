import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/src/models/attachment.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {
  static Serializer<Message> get serializer => _$messageSerializer;

  @nullable
  String get id;

  @nullable
  String get subject;

  @nullable
  String get bodyPreview;

  @nullable
  String get bodyContent;

  @nullable
  DateTime get lastModifiedDateTime;

  @nullable
  BuiltList<Attachment> get attachments;

  Message._();

  factory Message([updates(MessageBuilder b)]) = _$Message;
}
