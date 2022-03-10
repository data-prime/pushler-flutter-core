// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataNotification _$$_DataNotificationFromJson(Map<String, dynamic> json) =>
    _$_DataNotification(
      action: json['action'] as String?,
      link: json['link'] as String?,
      channel: json['channel'] as String?,
      channelName: json['channel_name'] as String?,
      target: json['target'] as String?,
    );

Map<String, dynamic> _$$_DataNotificationToJson(_$_DataNotification instance) =>
    <String, dynamic>{
      'action': instance.action,
      'link': instance.link,
      'channel': instance.channel,
      'channel_name': instance.channelName,
      'target': instance.target,
    };
