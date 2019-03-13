import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'date_time_time_zone.g.dart';

abstract class DateTimeTimeZone implements Built<DateTimeTimeZone, DateTimeTimeZoneBuilder> {
  static Serializer<DateTimeTimeZone> get serializer => _$dateTimeTimeZoneSerializer;

  DateTime get dateTime;

  String get timeZone;

  DateTimeTimeZone._();

  factory DateTimeTimeZone([updates(DateTimeTimeZoneBuilder b)]) = _$DateTimeTimeZone;
}
