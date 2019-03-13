// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Folder> _$folderSerializer = new _$FolderSerializer();

class _$FolderSerializer implements StructuredSerializer<Folder> {
  @override
  final Iterable<Type> types = const [Folder, _$Folder];
  @override
  final String wireName = 'Folder';

  @override
  Iterable serialize(Serializers serializers, Folder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Folder deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FolderBuilder();

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
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Folder extends Folder {
  @override
  final String id;
  @override
  final String displayName;

  factory _$Folder([void updates(FolderBuilder b)]) =>
      (new FolderBuilder()..update(updates)).build();

  _$Folder._({this.id, this.displayName}) : super._();

  @override
  Folder rebuild(void updates(FolderBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FolderBuilder toBuilder() => new FolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Folder &&
        id == other.id &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), displayName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Folder')
          ..add('id', id)
          ..add('displayName', displayName))
        .toString();
  }
}

class FolderBuilder implements Builder<Folder, FolderBuilder> {
  _$Folder _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  FolderBuilder();

  FolderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _displayName = _$v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Folder other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Folder;
  }

  @override
  void update(void updates(FolderBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Folder build() {
    final _$result = _$v ?? new _$Folder._(id: id, displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
