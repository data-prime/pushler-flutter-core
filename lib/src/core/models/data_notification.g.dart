// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataNotification _$DataNotificationFromJson(Map<String, dynamic> json) {
  return DataNotification(
    action: json['action'] as String?,
    link: json['link'] as String?,
    channel: json['channel'] as String?,
    channelName: json['channel_name'] as String?,
    target: json['target'] as String?,
  );
}

Map<String, dynamic> _$DataNotificationToJson(DataNotification instance) =>
    <String, dynamic>{
      'action': instance.action,
      'link': instance.link,
      'channel': instance.channel,
      'channel_name': instance.channelName,
      'target': instance.target,
    };
