// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlook_task_folder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OutlookTaskFolder> _$outlookTaskFolderSerializer =
    new _$OutlookTaskFolderSerializer();

class _$OutlookTaskFolderSerializer
    implements StructuredSerializer<OutlookTaskFolder> {
  @override
  final Iterable<Type> types = const [OutlookTaskFolder, _$OutlookTaskFolder];
  @override
  final String wireName = 'OutlookTaskFolder';

  @override
  Iterable serialize(Serializers serializers, OutlookTaskFolder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.changeKey != null) {
      result
        ..add('changeKey')
        ..add(serializers.serialize(object.changeKey,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.isDefaultFolder != null) {
      result
        ..add('isDefaultFolder')
        ..add(serializers.serialize(object.isDefaultFolder,
            specifiedType: const FullType(bool)));
    }
    if (object.parentGroupKey != null) {
      result
        ..add('parentGroupKey')
        ..add(serializers.serialize(object.parentGroupKey,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  OutlookTaskFolder deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OutlookTaskFolderBuilder();

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
        case 'changeKey':
          result.changeKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isDefaultFolder':
          result.isDefaultFolder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'parentGroupKey':
          result.parentGroupKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OutlookTaskFolder extends OutlookTaskFolder {
  @override
  final String id;
  @override
  final String changeKey;
  @override
  final String name;
  @override
  final bool isDefaultFolder;
  @override
  final String parentGroupKey;

  factory _$OutlookTaskFolder([void updates(OutlookTaskFolderBuilder b)]) =>
      (new OutlookTaskFolderBuilder()..update(updates)).build();

  _$OutlookTaskFolder._(
      {this.id,
      this.changeKey,
      this.name,
      this.isDefaultFolder,
      this.parentGroupKey})
      : super._();

  @override
  OutlookTaskFolder rebuild(void updates(OutlookTaskFolderBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OutlookTaskFolderBuilder toBuilder() =>
      new OutlookTaskFolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutlookTaskFolder &&
        id == other.id &&
        changeKey == other.changeKey &&
        name == other.name &&
        isDefaultFolder == other.isDefaultFolder &&
        parentGroupKey == other.parentGroupKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), changeKey.hashCode), name.hashCode),
            isDefaultFolder.hashCode),
        parentGroupKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OutlookTaskFolder')
          ..add('id', id)
          ..add('changeKey', changeKey)
          ..add('name', name)
          ..add('isDefaultFolder', isDefaultFolder)
          ..add('parentGroupKey', parentGroupKey))
        .toString();
  }
}

class OutlookTaskFolderBuilder
    implements Builder<OutlookTaskFolder, OutlookTaskFolderBuilder> {
  _$OutlookTaskFolder _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _changeKey;
  String get changeKey => _$this._changeKey;
  set changeKey(String changeKey) => _$this._changeKey = changeKey;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isDefaultFolder;
  bool get isDefaultFolder => _$this._isDefaultFolder;
  set isDefaultFolder(bool isDefaultFolder) =>
      _$this._isDefaultFolder = isDefaultFolder;

  String _parentGroupKey;
  String get parentGroupKey => _$this._parentGroupKey;
  set parentGroupKey(String parentGroupKey) =>
      _$this._parentGroupKey = parentGroupKey;

  OutlookTaskFolderBuilder();

  OutlookTaskFolderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _changeKey = _$v.changeKey;
      _name = _$v.name;
      _isDefaultFolder = _$v.isDefaultFolder;
      _parentGroupKey = _$v.parentGroupKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutlookTaskFolder other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OutlookTaskFolder;
  }

  @override
  void update(void updates(OutlookTaskFolderBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OutlookTaskFolder build() {
    final _$result = _$v ??
        new _$OutlookTaskFolder._(
            id: id,
            changeKey: changeKey,
            name: name,
            isDefaultFolder: isDefaultFolder,
            parentGroupKey: parentGroupKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
