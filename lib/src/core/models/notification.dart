import 'package:json_annotation/json_annotation.dart';

import 'channel.dart';
import 'data_notification.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  String id;
  Channel sender;
  String recipient;
  String title;
  bool viewed;
  String? body;
  DataNotification? data;
  DateTime createAt;

  Notification({
    required this.id,
    required this.title,
    required this.body,
    required this.recipient,
    required this.createAt,
    required this.data,
    required this.sender,
    required this.viewed,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}
