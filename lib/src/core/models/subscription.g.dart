// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
    id: json['id'] as int,
    channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
    tag: json['tag'] as String,
    createAt: DateTime.parse(json['createAt'] as String),
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel,
      'tag': instance.tag,
      'createAt': instance.createAt.toIso8601String(),
    };
