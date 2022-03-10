// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

  _Notification call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'sender') required Channel sender,
      @JsonKey(name: 'recipient') required String recipient,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'viewed') required bool viewed,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'data') DataNotification? data,
      @JsonKey(name: 'createAt') required DateTime createAt}) {
    return _Notification(
      id: id,
      sender: sender,
      recipient: recipient,
      title: title,
      viewed: viewed,
      body: body,
      data: data,
      createAt: createAt,
    );
  }

  Notification fromJson(Map<String, Object?> json) {
    return Notification.fromJson(json);
  }
}

/// @nodoc
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender')
  Channel get sender => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient')
  String get recipient => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewed')
  bool get viewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataNotification? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'createAt')
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'sender') Channel sender,
      @JsonKey(name: 'recipient') String recipient,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'viewed') bool viewed,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'data') DataNotification? data,
      @JsonKey(name: 'createAt') DateTime createAt});

  $ChannelCopyWith<$Res> get sender;
  $DataNotificationCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? recipient = freezed,
    Object? title = freezed,
    Object? viewed = freezed,
    Object? body = freezed,
    Object? data = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Channel,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewed: viewed == freezed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ChannelCopyWith<$Res> get sender {
    return $ChannelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $DataNotificationCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataNotificationCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'sender') Channel sender,
      @JsonKey(name: 'recipient') String recipient,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'viewed') bool viewed,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'data') DataNotification? data,
      @JsonKey(name: 'createAt') DateTime createAt});

  @override
  $ChannelCopyWith<$Res> get sender;
  @override
  $DataNotificationCopyWith<$Res>? get data;
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object? id = freezed,
    Object? sender = freezed,
    Object? recipient = freezed,
    Object? title = freezed,
    Object? viewed = freezed,
    Object? body = freezed,
    Object? data = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Channel,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewed: viewed == freezed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notification extends _Notification {
  const _$_Notification(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'sender') required this.sender,
      @JsonKey(name: 'recipient') required this.recipient,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'viewed') required this.viewed,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'createAt') required this.createAt})
      : super._();

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'sender')
  final Channel sender;
  @override
  @JsonKey(name: 'recipient')
  final String recipient;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'viewed')
  final bool viewed;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'data')
  final DataNotification? data;
  @override
  @JsonKey(name: 'createAt')
  final DateTime createAt;

  @override
  String toString() {
    return 'Notification(id: $id, sender: $sender, recipient: $recipient, title: $title, viewed: $viewed, body: $body, data: $data, createAt: $createAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.viewed, viewed) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.createAt, createAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(viewed),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(createAt));

  @JsonKey(ignore: true)
  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationToJson(this);
  }
}

abstract class _Notification extends Notification {
  const factory _Notification(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'sender') required Channel sender,
      @JsonKey(name: 'recipient') required String recipient,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'viewed') required bool viewed,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'data') DataNotification? data,
      @JsonKey(name: 'createAt') required DateTime createAt}) = _$_Notification;
  const _Notification._() : super._();

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'sender')
  Channel get sender;
  @override
  @JsonKey(name: 'recipient')
  String get recipient;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'viewed')
  bool get viewed;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'data')
  DataNotification? get data;
  @override
  @JsonKey(name: 'createAt')
  DateTime get createAt;
  @override
  @JsonKey(ignore: true)
  _$NotificationCopyWith<_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
