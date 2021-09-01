import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';
import 'subscription.dart';

part 'fetch_data.g.dart';

@JsonSerializable()
class FetchData {
  bool? result;
  List<Subscription>? subscriptions;
  List<Notification>? notifications;
  String? uuid;

  FetchData({
    required this.result,
    required this.subscriptions,
    required this.notifications,
    required this.uuid,
  });

  factory FetchData.fromJson(Map<String, dynamic> json) =>
      _$FetchDataFromJson(json);

  Map<String, dynamic> toJson() => _$FetchDataToJson(this);
}
