// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Attachment> _$attachmentSerializer = new _$AttachmentSerializer();

class _$AttachmentSerializer implements StructuredSerializer<Attachment> {
  @override
  final Iterable<Type> types = const [Attachment, _$Attachment];
  @override
  final String wireName = 'Attachment';

  @override
  Iterable serialize(Serializers serializers, Attachment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.contentId != null) {
      result
        ..add('contentId')
        ..add(serializers.serialize(object.contentId,
            specifiedType: const FullType(String)));
    }
    if (object.contentBytes != null) {
      result
        ..add('contentBytes')
        ..add(serializers.serialize(object.contentBytes,
            specifiedType: const FullType(String)));
    }
    if (object.contentType != null) {
      result
        ..add('contentType')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Attachment deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttachmentBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentId':
          result.contentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentBytes':
          result.contentBytes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Attachment extends Attachment {
  @override
  final String id;
  @override
  final String name;
  @override
  final String contentId;
  @override
  final String contentBytes;
  @override
  final String contentType;

  factory _$Attachment([void updates(AttachmentBuilder b)]) =>
      (new AttachmentBuilder()..update(updates)).build();

  _$Attachment._(
      {this.id, this.name, this.contentId, this.contentBytes, this.contentType})
      : super._();

  @override
  Attachment rebuild(void updates(AttachmentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentBuilder toBuilder() => new AttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attachment &&
        id == other.id &&
        name == other.name &&
        contentId == other.contentId &&
        contentBytes == other.contentBytes &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), contentId.hashCode),
            contentBytes.hashCode),
        contentType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attachment')
          ..add('id', id)
          ..add('name', name)
          ..add('contentId', contentId)
          ..add('contentBytes', contentBytes)
          ..add('contentType', contentType))
        .toString();
  }
}

class AttachmentBuilder implements Builder<Attachment, AttachmentBuilder> {
  _$Attachment _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _contentId;
  String get contentId => _$this._contentId;
  set contentId(String contentId) => _$this._contentId = contentId;

  String _contentBytes;
  String get contentBytes => _$this._contentBytes;
  set contentBytes(String contentBytes) => _$this._contentBytes = contentBytes;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  AttachmentBuilder();

  AttachmentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _contentId = _$v.contentId;
      _contentBytes = _$v.contentBytes;
      _contentType = _$v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attachment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attachment;
  }

  @override
  void update(void updates(AttachmentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Attachment build() {
    final _$result = _$v ??
        new _$Attachment._(
            id: id,
            name: name,
            contentId: contentId,
            contentBytes: contentBytes,
            contentType: contentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
