// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Message> _$messageSerializer = new _$MessageSerializer();

class _$MessageSerializer implements StructuredSerializer<Message> {
  @override
  final Iterable<Type> types = const [Message, _$Message];
  @override
  final String wireName = 'Message';

  @override
  Iterable serialize(Serializers serializers, Message object,
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
    if (object.bodyPreview != null) {
      result
        ..add('bodyPreview')
        ..add(serializers.serialize(object.bodyPreview,
            specifiedType: const FullType(String)));
    }
    if (object.bodyContent != null) {
      result
        ..add('bodyContent')
        ..add(serializers.serialize(object.bodyContent,
            specifiedType: const FullType(String)));
    }
    if (object.lastModifiedDateTime != null) {
      result
        ..add('lastModifiedDateTime')
        ..add(serializers.serialize(object.lastModifiedDateTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.attachments != null) {
      result
        ..add('attachments')
        ..add(serializers.serialize(object.attachments,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Attachment)])));
    }

    return result;
  }

  @override
  Message deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageBuilder();

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
        case 'bodyPreview':
          result.bodyPreview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bodyContent':
          result.bodyContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastModifiedDateTime':
          result.lastModifiedDateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Attachment)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Message extends Message {
  @override
  final String id;
  @override
  final String subject;
  @override
  final String bodyPreview;
  @override
  final String bodyContent;
  @override
  final DateTime lastModifiedDateTime;
  @override
  final BuiltList<Attachment> attachments;

  factory _$Message([void updates(MessageBuilder b)]) =>
      (new MessageBuilder()..update(updates)).build();

  _$Message._(
      {this.id,
      this.subject,
      this.bodyPreview,
      this.bodyContent,
      this.lastModifiedDateTime,
      this.attachments})
      : super._();

  @override
  Message rebuild(void updates(MessageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageBuilder toBuilder() => new MessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Message &&
        id == other.id &&
        subject == other.subject &&
        bodyPreview == other.bodyPreview &&
        bodyContent == other.bodyContent &&
        lastModifiedDateTime == other.lastModifiedDateTime &&
        attachments == other.attachments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), subject.hashCode),
                    bodyPreview.hashCode),
                bodyContent.hashCode),
            lastModifiedDateTime.hashCode),
        attachments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Message')
          ..add('id', id)
          ..add('subject', subject)
          ..add('bodyPreview', bodyPreview)
          ..add('bodyContent', bodyContent)
          ..add('lastModifiedDateTime', lastModifiedDateTime)
          ..add('attachments', attachments))
        .toString();
  }
}

class MessageBuilder implements Builder<Message, MessageBuilder> {
  _$Message _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  String _bodyPreview;
  String get bodyPreview => _$this._bodyPreview;
  set bodyPreview(String bodyPreview) => _$this._bodyPreview = bodyPreview;

  String _bodyContent;
  String get bodyContent => _$this._bodyContent;
  set bodyContent(String bodyContent) => _$this._bodyContent = bodyContent;

  DateTime _lastModifiedDateTime;
  DateTime get lastModifiedDateTime => _$this._lastModifiedDateTime;
  set lastModifiedDateTime(DateTime lastModifiedDateTime) =>
      _$this._lastModifiedDateTime = lastModifiedDateTime;

  ListBuilder<Attachment> _attachments;
  ListBuilder<Attachment> get attachments =>
      _$this._attachments ??= new ListBuilder<Attachment>();
  set attachments(ListBuilder<Attachment> attachments) =>
      _$this._attachments = attachments;

  MessageBuilder();

  MessageBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _subject = _$v.subject;
      _bodyPreview = _$v.bodyPreview;
      _bodyContent = _$v.bodyContent;
      _lastModifiedDateTime = _$v.lastModifiedDateTime;
      _attachments = _$v.attachments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Message other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Message;
  }

  @override
  void update(void updates(MessageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Message build() {
    _$Message _$result;
    try {
      _$result = _$v ??
          new _$Message._(
              id: id,
              subject: subject,
              bodyPreview: bodyPreview,
              bodyContent: bodyContent,
              lastModifiedDateTime: lastModifiedDateTime,
              attachments: _attachments?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Message', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
