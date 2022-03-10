// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchData _$FetchDataFromJson(Map<String, dynamic> json) {
  return _FetchData.fromJson(json);
}

/// @nodoc
class _$FetchDataTearOff {
  const _$FetchDataTearOff();

  _FetchData call(
      {@JsonKey(name: 'result') bool? result,
      @JsonKey(name: 'subscriptions') List<Subscription>? subscriptions,
      @JsonKey(name: 'notifications') List<Notification>? notifications,
      @JsonKey(name: 'uuid') String? uuid}) {
    return _FetchData(
      result: result,
      subscriptions: subscriptions,
      notifications: notifications,
      uuid: uuid,
    );
  }

  FetchData fromJson(Map<String, Object?> json) {
    return FetchData.fromJson(json);
  }
}

/// @nodoc
const $FetchData = _$FetchDataTearOff();

/// @nodoc
mixin _$FetchData {
  @JsonKey(name: 'result')
  bool? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptions')
  List<Subscription>? get subscriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifications')
  List<Notification>? get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchDataCopyWith<FetchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDataCopyWith<$Res> {
  factory $FetchDataCopyWith(FetchData value, $Res Function(FetchData) then) =
      _$FetchDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'result') bool? result,
      @JsonKey(name: 'subscriptions') List<Subscription>? subscriptions,
      @JsonKey(name: 'notifications') List<Notification>? notifications,
      @JsonKey(name: 'uuid') String? uuid});
}

/// @nodoc
class _$FetchDataCopyWithImpl<$Res> implements $FetchDataCopyWith<$Res> {
  _$FetchDataCopyWithImpl(this._value, this._then);

  final FetchData _value;
  // ignore: unused_field
  final $Res Function(FetchData) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? subscriptions = freezed,
    Object? notifications = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>?,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FetchDataCopyWith<$Res> implements $FetchDataCopyWith<$Res> {
  factory _$FetchDataCopyWith(
          _FetchData value, $Res Function(_FetchData) then) =
      __$FetchDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'result') bool? result,
      @JsonKey(name: 'subscriptions') List<Subscription>? subscriptions,
      @JsonKey(name: 'notifications') List<Notification>? notifications,
      @JsonKey(name: 'uuid') String? uuid});
}

/// @nodoc
class __$FetchDataCopyWithImpl<$Res> extends _$FetchDataCopyWithImpl<$Res>
    implements _$FetchDataCopyWith<$Res> {
  __$FetchDataCopyWithImpl(_FetchData _value, $Res Function(_FetchData) _then)
      : super(_value, (v) => _then(v as _FetchData));

  @override
  _FetchData get _value => super._value as _FetchData;

  @override
  $Res call({
    Object? result = freezed,
    Object? subscriptions = freezed,
    Object? notifications = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_FetchData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscriptions: subscriptions == freezed
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>?,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchData extends _FetchData {
  const _$_FetchData(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'subscriptions') this.subscriptions,
      @JsonKey(name: 'notifications') this.notifications,
      @JsonKey(name: 'uuid') this.uuid})
      : super._();

  factory _$_FetchData.fromJson(Map<String, dynamic> json) =>
      _$$_FetchDataFromJson(json);

  @override
  @JsonKey(name: 'result')
  final bool? result;
  @override
  @JsonKey(name: 'subscriptions')
  final List<Subscription>? subscriptions;
  @override
  @JsonKey(name: 'notifications')
  final List<Notification>? notifications;
  @override
  @JsonKey(name: 'uuid')
  final String? uuid;

  @override
  String toString() {
    return 'FetchData(result: $result, subscriptions: $subscriptions, notifications: $notifications, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchData &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.subscriptions, subscriptions) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(subscriptions),
      const DeepCollectionEquality().hash(notifications),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$FetchDataCopyWith<_FetchData> get copyWith =>
      __$FetchDataCopyWithImpl<_FetchData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchDataToJson(this);
  }
}

abstract class _FetchData extends FetchData {
  const factory _FetchData(
      {@JsonKey(name: 'result') bool? result,
      @JsonKey(name: 'subscriptions') List<Subscription>? subscriptions,
      @JsonKey(name: 'notifications') List<Notification>? notifications,
      @JsonKey(name: 'uuid') String? uuid}) = _$_FetchData;
  const _FetchData._() : super._();

  factory _FetchData.fromJson(Map<String, dynamic> json) =
      _$_FetchData.fromJson;

  @override
  @JsonKey(name: 'result')
  bool? get result;
  @override
  @JsonKey(name: 'subscriptions')
  List<Subscription>? get subscriptions;
  @override
  @JsonKey(name: 'notifications')
  List<Notification>? get notifications;
  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(ignore: true)
  _$FetchDataCopyWith<_FetchData> get copyWith =>
      throw _privateConstructorUsedError;
}
