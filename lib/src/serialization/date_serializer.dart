import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

/// Alternative serializer for [DateTime].
///
/// Install this to use ISO8601 format instead of the default (microseconds
/// since epoch). Use [SerializersBuilder.add] to install it.
///
/// An exception will be thrown on attempt to serialize local DateTime
/// instances; you must use UTC.
class GraphIso8601DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime, {FullType specifiedType = FullType.unspecified}) {
    if (!dateTime.isUtc) {
      throw new ArgumentError.value(dateTime, 'dateTime', 'Must be in utc for serialization.');
    }
    return dateTime.toIso8601String();
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    final iso8061 = serialized as String;
    RegExp millisecondsExp = RegExp(r"(\d+){7}");
    final correctedIso8061 = iso8061.replaceAllMapped(millisecondsExp, (match) {
      return match[0].substring(0, 6);
    });

    return DateTime.parse(correctedIso8061).toUtc();
  }
}
