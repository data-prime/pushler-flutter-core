// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataNotification _$DataNotificationFromJson(Map<String, dynamic> json) {
  return _DataNotification.fromJson(json);
}

/// @nodoc
class _$DataNotificationTearOff {
  const _$DataNotificationTearOff();

  _DataNotification call(
      {@JsonKey(name: 'action') String? action,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'channel') String? channel,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'target') String? target}) {
    return _DataNotification(
      action: action,
      link: link,
      channel: channel,
      channelName: channelName,
      target: target,
    );
  }

  DataNotification fromJson(Map<String, Object?> json) {
    return DataNotification.fromJson(json);
  }
}

/// @nodoc
const $DataNotification = _$DataNotificationTearOff();

/// @nodoc
mixin _$DataNotification {
  @JsonKey(name: 'action')
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel')
  String? get channel => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'target')
  String? get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataNotificationCopyWith<DataNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataNotificationCopyWith<$Res> {
  factory $DataNotificationCopyWith(
          DataNotification value, $Res Function(DataNotification) then) =
      _$DataNotificationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'action') String? action,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'channel') String? channel,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'target') String? target});
}

/// @nodoc
class _$DataNotificationCopyWithImpl<$Res>
    implements $DataNotificationCopyWith<$Res> {
  _$DataNotificationCopyWithImpl(this._value, this._then);

  final DataNotification _value;
  // ignore: unused_field
  final $Res Function(DataNotification) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? link = freezed,
    Object? channel = freezed,
    Object? channelName = freezed,
    Object? target = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataNotificationCopyWith<$Res>
    implements $DataNotificationCopyWith<$Res> {
  factory _$DataNotificationCopyWith(
          _DataNotification value, $Res Function(_DataNotification) then) =
      __$DataNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'action') String? action,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'channel') String? channel,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'target') String? target});
}

/// @nodoc
class __$DataNotificationCopyWithImpl<$Res>
    extends _$DataNotificationCopyWithImpl<$Res>
    implements _$DataNotificationCopyWith<$Res> {
  __$DataNotificationCopyWithImpl(
      _DataNotification _value, $Res Function(_DataNotification) _then)
      : super(_value, (v) => _then(v as _DataNotification));

  @override
  _DataNotification get _value => super._value as _DataNotification;

  @override
  $Res call({
    Object? action = freezed,
    Object? link = freezed,
    Object? channel = freezed,
    Object? channelName = freezed,
    Object? target = freezed,
  }) {
    return _then(_DataNotification(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataNotification extends _DataNotification {
  const _$_DataNotification(
      {@JsonKey(name: 'action') this.action,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'channel') this.channel,
      @JsonKey(name: 'channel_name') this.channelName,
      @JsonKey(name: 'target') this.target})
      : super._();

  factory _$_DataNotification.fromJson(Map<String, dynamic> json) =>
      _$$_DataNotificationFromJson(json);

  @override
  @JsonKey(name: 'action')
  final String? action;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'channel')
  final String? channel;
  @override
  @JsonKey(name: 'channel_name')
  final String? channelName;
  @override
  @JsonKey(name: 'target')
  final String? target;

  @override
  String toString() {
    return 'DataNotification(action: $action, link: $link, channel: $channel, channelName: $channelName, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataNotification &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.channel, channel) &&
            const DeepCollectionEquality()
                .equals(other.channelName, channelName) &&
            const DeepCollectionEquality().equals(other.target, target));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(channel),
      const DeepCollectionEquality().hash(channelName),
      const DeepCollectionEquality().hash(target));

  @JsonKey(ignore: true)
  @override
  _$DataNotificationCopyWith<_DataNotification> get copyWith =>
      __$DataNotificationCopyWithImpl<_DataNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataNotificationToJson(this);
  }
}

abstract class _DataNotification extends DataNotification {
  const factory _DataNotification(
      {@JsonKey(name: 'action') String? action,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'channel') String? channel,
      @JsonKey(name: 'channel_name') String? channelName,
      @JsonKey(name: 'target') String? target}) = _$_DataNotification;
  const _DataNotification._() : super._();

  factory _DataNotification.fromJson(Map<String, dynamic> json) =
      _$_DataNotification.fromJson;

  @override
  @JsonKey(name: 'action')
  String? get action;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'channel')
  String? get channel;
  @override
  @JsonKey(name: 'channel_name')
  String? get channelName;
  @override
  @JsonKey(name: 'target')
  String? get target;
  @override
  @JsonKey(ignore: true)
  _$DataNotificationCopyWith<_DataNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
