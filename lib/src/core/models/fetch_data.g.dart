// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchData _$$_FetchDataFromJson(Map<String, dynamic> json) => _$_FetchData(
      result: json['result'] as bool?,
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
          .toList(),
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$$_FetchDataToJson(_$_FetchData instance) =>
    <String, dynamic>{
      'result': instance.result,
      'subscriptions': instance.subscriptions,
      'notifications': instance.notifications,
      'uuid': instance.uuid,
    };
