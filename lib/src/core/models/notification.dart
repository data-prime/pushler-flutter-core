import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pushler_core/src/core/models/model.dart';

part 'notification.freezed.dart';

part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'sender') required Channel sender,
    @JsonKey(name: 'recipient') required String recipient,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'viewed') required bool viewed,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'data') DataNotification? data,
    @JsonKey(name: 'createAt') required DateTime createAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  const Notification._();
}
