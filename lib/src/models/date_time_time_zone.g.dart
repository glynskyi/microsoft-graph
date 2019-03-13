// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_time_time_zone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DateTimeTimeZone> _$dateTimeTimeZoneSerializer =
    new _$DateTimeTimeZoneSerializer();

class _$DateTimeTimeZoneSerializer
    implements StructuredSerializer<DateTimeTimeZone> {
  @override
  final Iterable<Type> types = const [DateTimeTimeZone, _$DateTimeTimeZone];
  @override
  final String wireName = 'DateTimeTimeZone';

  @override
  Iterable serialize(Serializers serializers, DateTimeTimeZone object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'dateTime',
      serializers.serialize(object.dateTime,
          specifiedType: const FullType(DateTime)),
      'timeZone',
      serializers.serialize(object.timeZone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DateTimeTimeZone deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DateTimeTimeZoneBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'timeZone':
          result.timeZone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DateTimeTimeZone extends DateTimeTimeZone {
  @override
  final DateTime dateTime;
  @override
  final String timeZone;

  factory _$DateTimeTimeZone([void updates(DateTimeTimeZoneBuilder b)]) =>
      (new DateTimeTimeZoneBuilder()..update(updates)).build();

  _$DateTimeTimeZone._({this.dateTime, this.timeZone}) : super._() {
    if (dateTime == null) {
      throw new BuiltValueNullFieldError('DateTimeTimeZone', 'dateTime');
    }
    if (timeZone == null) {
      throw new BuiltValueNullFieldError('DateTimeTimeZone', 'timeZone');
    }
  }

  @override
  DateTimeTimeZone rebuild(void updates(DateTimeTimeZoneBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DateTimeTimeZoneBuilder toBuilder() =>
      new DateTimeTimeZoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateTimeTimeZone &&
        dateTime == other.dateTime &&
        timeZone == other.timeZone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dateTime.hashCode), timeZone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DateTimeTimeZone')
          ..add('dateTime', dateTime)
          ..add('timeZone', timeZone))
        .toString();
  }
}

class DateTimeTimeZoneBuilder
    implements Builder<DateTimeTimeZone, DateTimeTimeZoneBuilder> {
  _$DateTimeTimeZone _$v;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  String _timeZone;
  String get timeZone => _$this._timeZone;
  set timeZone(String timeZone) => _$this._timeZone = timeZone;

  DateTimeTimeZoneBuilder();

  DateTimeTimeZoneBuilder get _$this {
    if (_$v != null) {
      _dateTime = _$v.dateTime;
      _timeZone = _$v.timeZone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DateTimeTimeZone other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DateTimeTimeZone;
  }

  @override
  void update(void updates(DateTimeTimeZoneBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DateTimeTimeZone build() {
    final _$result =
        _$v ?? new _$DateTimeTimeZone._(dateTime: dateTime, timeZone: timeZone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
