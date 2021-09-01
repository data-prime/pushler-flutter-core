import 'package:json_annotation/json_annotation.dart';

import 'channel.dart';

part 'subscription.g.dart';

@JsonSerializable()
class Subscription {
  int id;
  Channel channel;
  String tag;
  DateTime createAt;

  Subscription({
    required this.id,
    required this.channel,
    required this.tag,
    required this.createAt,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
