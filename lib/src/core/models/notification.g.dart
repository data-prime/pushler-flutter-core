// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      id: json['id'] as String,
      sender: Channel.fromJson(json['sender'] as Map<String, dynamic>),
      recipient: json['recipient'] as String,
      title: json['title'] as String,
      viewed: json['viewed'] as bool,
      body: json['body'] as String?,
      data: json['data'] == null
          ? null
          : DataNotification.fromJson(json['data'] as Map<String, dynamic>),
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'recipient': instance.recipient,
      'title': instance.title,
      'viewed': instance.viewed,
      'body': instance.body,
      'data': instance.data,
      'createAt': instance.createAt.toIso8601String(),
    };
