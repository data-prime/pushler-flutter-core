import 'package:json_annotation/json_annotation.dart';

part 'new_notification.g.dart';

@JsonSerializable()
class NewNotification {
  String? sender;
  String? action;
  String? link;
  String? id;
  DateTime? createAt;

  NewNotification({
    this.sender,
    this.action,
    this.link,
    this.id,
    this.createAt,
  });

  factory NewNotification.fromJson(Map<String, dynamic> json) => _$NewNotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NewNotificationToJson(this);
}
