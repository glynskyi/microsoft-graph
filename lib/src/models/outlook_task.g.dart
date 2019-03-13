// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlook_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OutlookTask> _$outlookTaskSerializer = new _$OutlookTaskSerializer();

class _$OutlookTaskSerializer implements StructuredSerializer<OutlookTask> {
  @override
  final Iterable<Type> types = const [OutlookTask, _$OutlookTask];
  @override
  final String wireName = 'OutlookTask';

  @override
  Iterable serialize(Serializers serializers, OutlookTask object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(String)));
    }
    if (object.importance != null) {
      result
        ..add('importance')
        ..add(serializers.serialize(object.importance,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.dueDateTime != null) {
      result
        ..add('dueDateTime')
        ..add(serializers.serialize(object.dueDateTime,
            specifiedType: const FullType(DateTimeTimeZone)));
    }
    if (object.reminderDateTime != null) {
      result
        ..add('reminderDateTime')
        ..add(serializers.serialize(object.reminderDateTime,
            specifiedType: const FullType(DateTimeTimeZone)));
    }
    if (object.startDateTime != null) {
      result
        ..add('startDateTime')
        ..add(serializers.serialize(object.startDateTime,
            specifiedType: const FullType(DateTimeTimeZone)));
    }

    return result;
  }

  @override
  OutlookTask deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OutlookTaskBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'importance':
          result.importance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dueDateTime':
          result.dueDateTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DateTimeTimeZone))
              as DateTimeTimeZone);
          break;
        case 'reminderDateTime':
          result.reminderDateTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DateTimeTimeZone))
              as DateTimeTimeZone);
          break;
        case 'startDateTime':
          result.startDateTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DateTimeTimeZone))
              as DateTimeTimeZone);
          break;
      }
    }

    return result.build();
  }
}

class _$OutlookTask extends OutlookTask {
  @override
  final String id;
  @override
  final String subject;
  @override
  final String importance;
  @override
  final String status;
  @override
  final DateTimeTimeZone dueDateTime;
  @override
  final DateTimeTimeZone reminderDateTime;
  @override
  final DateTimeTimeZone startDateTime;

  factory _$OutlookTask([void updates(OutlookTaskBuilder b)]) =>
      (new OutlookTaskBuilder()..update(updates)).build();

  _$OutlookTask._(
      {this.id,
      this.subject,
      this.importance,
      this.status,
      this.dueDateTime,
      this.reminderDateTime,
      this.startDateTime})
      : super._();

  @override
  OutlookTask rebuild(void updates(OutlookTaskBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OutlookTaskBuilder toBuilder() => new OutlookTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutlookTask &&
        id == other.id &&
        subject == other.subject &&
        importance == other.importance &&
        status == other.status &&
        dueDateTime == other.dueDateTime &&
        reminderDateTime == other.reminderDateTime &&
        startDateTime == other.startDateTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), subject.hashCode),
                        importance.hashCode),
                    status.hashCode),
                dueDateTime.hashCode),
            reminderDateTime.hashCode),
        startDateTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OutlookTask')
          ..add('id', id)
          ..add('subject', subject)
          ..add('importance', importance)
          ..add('status', status)
          ..add('dueDateTime', dueDateTime)
          ..add('reminderDateTime', reminderDateTime)
          ..add('startDateTime', startDateTime))
        .toString();
  }
}

class OutlookTaskBuilder implements Builder<OutlookTask, OutlookTaskBuilder> {
  _$OutlookTask _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  String _importance;
  String get importance => _$this._importance;
  set importance(String importance) => _$this._importance = importance;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  DateTimeTimeZoneBuilder _dueDateTime;
  DateTimeTimeZoneBuilder get dueDateTime =>
      _$this._dueDateTime ??= new DateTimeTimeZoneBuilder();
  set dueDateTime(DateTimeTimeZoneBuilder dueDateTime) =>
      _$this._dueDateTime = dueDateTime;

  DateTimeTimeZoneBuilder _reminderDateTime;
  DateTimeTimeZoneBuilder get reminderDateTime =>
      _$this._reminderDateTime ??= new DateTimeTimeZoneBuilder();
  set reminderDateTime(DateTimeTimeZoneBuilder reminderDateTime) =>
      _$this._reminderDateTime = reminderDateTime;

  DateTimeTimeZoneBuilder _startDateTime;
  DateTimeTimeZoneBuilder get startDateTime =>
      _$this._startDateTime ??= new DateTimeTimeZoneBuilder();
  set startDateTime(DateTimeTimeZoneBuilder startDateTime) =>
      _$this._startDateTime = startDateTime;

  OutlookTaskBuilder();

  OutlookTaskBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _subject = _$v.subject;
      _importance = _$v.importance;
      _status = _$v.status;
      _dueDateTime = _$v.dueDateTime?.toBuilder();
      _reminderDateTime = _$v.reminderDateTime?.toBuilder();
      _startDateTime = _$v.startDateTime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutlookTask other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OutlookTask;
  }

  @override
  void update(void updates(OutlookTaskBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OutlookTask build() {
    _$OutlookTask _$result;
    try {
      _$result = _$v ??
          new _$OutlookTask._(
              id: id,
              subject: subject,
              importance: importance,
              status: status,
              dueDateTime: _dueDateTime?.build(),
              reminderDateTime: _reminderDateTime?.build(),
              startDateTime: _startDateTime?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dueDateTime';
        _dueDateTime?.build();
        _$failedField = 'reminderDateTime';
        _reminderDateTime?.build();
        _$failedField = 'startDateTime';
        _startDateTime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OutlookTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
