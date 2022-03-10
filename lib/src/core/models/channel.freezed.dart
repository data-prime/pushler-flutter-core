// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
class _$ChannelTearOff {
  const _$ChannelTearOff();

  _Channel call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'public') required bool public,
      @JsonKey(name: 'pathURL') String? pathURL,
      @JsonKey(name: 'imageURL') String? imageURL,
      @JsonKey(name: 'createAt') required DateTime createAt,
      @JsonKey(name: 'changeAt') required DateTime changeAt}) {
    return _Channel(
      id: id,
      name: name,
      public: public,
      pathURL: pathURL,
      imageURL: imageURL,
      createAt: createAt,
      changeAt: changeAt,
    );
  }

  Channel fromJson(Map<String, Object?> json) {
    return Channel.fromJson(json);
  }
}

/// @nodoc
const $Channel = _$ChannelTearOff();

/// @nodoc
mixin _$Channel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'public')
  bool get public => throw _privateConstructorUsedError;
  @JsonKey(name: 'pathURL')
  String? get pathURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageURL')
  String? get imageURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'createAt')
  DateTime get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'changeAt')
  DateTime get changeAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'public') bool public,
      @JsonKey(name: 'pathURL') String? pathURL,
      @JsonKey(name: 'imageURL') String? imageURL,
      @JsonKey(name: 'createAt') DateTime createAt,
      @JsonKey(name: 'changeAt') DateTime changeAt});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? public = freezed,
    Object? pathURL = freezed,
    Object? imageURL = freezed,
    Object? createAt = freezed,
    Object? changeAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      pathURL: pathURL == freezed
          ? _value.pathURL
          : pathURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changeAt: changeAt == freezed
          ? _value.changeAt
          : changeAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'public') bool public,
      @JsonKey(name: 'pathURL') String? pathURL,
      @JsonKey(name: 'imageURL') String? imageURL,
      @JsonKey(name: 'createAt') DateTime createAt,
      @JsonKey(name: 'changeAt') DateTime changeAt});
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? public = freezed,
    Object? pathURL = freezed,
    Object? imageURL = freezed,
    Object? createAt = freezed,
    Object? changeAt = freezed,
  }) {
    return _then(_Channel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      pathURL: pathURL == freezed
          ? _value.pathURL
          : pathURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changeAt: changeAt == freezed
          ? _value.changeAt
          : changeAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Channel extends _Channel {
  const _$_Channel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'public') required this.public,
      @JsonKey(name: 'pathURL') this.pathURL,
      @JsonKey(name: 'imageURL') this.imageURL,
      @JsonKey(name: 'createAt') required this.createAt,
      @JsonKey(name: 'changeAt') required this.changeAt})
      : super._();

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'public')
  final bool public;
  @override
  @JsonKey(name: 'pathURL')
  final String? pathURL;
  @override
  @JsonKey(name: 'imageURL')
  final String? imageURL;
  @override
  @JsonKey(name: 'createAt')
  final DateTime createAt;
  @override
  @JsonKey(name: 'changeAt')
  final DateTime changeAt;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, public: $public, pathURL: $pathURL, imageURL: $imageURL, createAt: $createAt, changeAt: $changeAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Channel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.public, public) &&
            const DeepCollectionEquality().equals(other.pathURL, pathURL) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality().equals(other.changeAt, changeAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(public),
      const DeepCollectionEquality().hash(pathURL),
      const DeepCollectionEquality().hash(imageURL),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(changeAt));

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelToJson(this);
  }
}

abstract class _Channel extends Channel {
  const factory _Channel(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'public') required bool public,
      @JsonKey(name: 'pathURL') String? pathURL,
      @JsonKey(name: 'imageURL') String? imageURL,
      @JsonKey(name: 'createAt') required DateTime createAt,
      @JsonKey(name: 'changeAt') required DateTime changeAt}) = _$_Channel;
  const _Channel._() : super._();

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'public')
  bool get public;
  @override
  @JsonKey(name: 'pathURL')
  String? get pathURL;
  @override
  @JsonKey(name: 'imageURL')
  String? get imageURL;
  @override
  @JsonKey(name: 'createAt')
  DateTime get createAt;
  @override
  @JsonKey(name: 'changeAt')
  DateTime get changeAt;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
