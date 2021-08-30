// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return Notification(
    id: json['id'] as String,
    title: json['title'] as String,
    body: json['body'] as String?,
    recipient: json['recipient'] as String,
    createAt: DateTime.parse(json['createAt'] as String),
    data: json['data'] == null
        ? null
        : DataNotification.fromJson(json['data'] as Map<String, dynamic>),
    sender: Channel.fromJson(json['sender'] as Map<String, dynamic>),
    viewed: json['viewed'] as bool,
  );
}

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
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
