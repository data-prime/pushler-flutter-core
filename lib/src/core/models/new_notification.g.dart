// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewNotification _$NewNotificationFromJson(Map<String, dynamic> json) {
  return NewNotification(
    sender: json['sender'] as String?,
    action: json['action'] as String?,
    link: json['link'] as String?,
    id: json['id'] as String?,
    createAt: json['createAt'] == null
        ? null
        : DateTime.parse(json['createAt'] as String),
  );
}

Map<String, dynamic> _$NewNotificationToJson(NewNotification instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'action': instance.action,
      'link': instance.link,
      'id': instance.id,
      'createAt': instance.createAt?.toIso8601String(),
    };
