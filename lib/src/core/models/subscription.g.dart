// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$$_SubscriptionFromJson(Map<String, dynamic> json) =>
    _$_Subscription(
      id: json['id'] as int,
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      tag: json['tag'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel,
      'tag': instance.tag,
      'createAt': instance.createAt.toIso8601String(),
    };
