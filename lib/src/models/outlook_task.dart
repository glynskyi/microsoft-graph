import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:microsoft_graph/src/models/date_time_time_zone.dart';

part 'outlook_task.g.dart';

abstract class OutlookTask implements Built<OutlookTask, OutlookTaskBuilder> {
  static Serializer<OutlookTask> get serializer => _$outlookTaskSerializer;

  @nullable
  String get id;

  @nullable
  String get subject;

  @nullable
  String get importance;

  @nullable
  String get status;

  @nullable
  DateTimeTimeZone get dueDateTime;

  @nullable
  DateTimeTimeZone get reminderDateTime;

  @nullable
  DateTimeTimeZone get startDateTime;

  OutlookTask._();

  factory OutlookTask([updates(OutlookTaskBuilder b)]) = _$OutlookTask;
}
