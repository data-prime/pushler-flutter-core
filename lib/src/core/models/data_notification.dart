import 'package:json_annotation/json_annotation.dart';

part 'data_notification.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DataNotification {
  String? action;
  String? link;
  String? channel;
  String? channelName;
  String? target;

  DataNotification({
    this.action,
    this.link,
    this.channel,
    this.channelName,
    this.target,
  });

  factory DataNotification.fromJson(Map<String, dynamic> json) => _$DataNotificationFromJson(json);

  Map<String, dynamic> toJson() => _$DataNotificationToJson(this);
}
