import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_notification.freezed.dart';

part 'data_notification.g.dart';

@freezed
class DataNotification with _$DataNotification {
  const factory DataNotification({
    @JsonKey(name: 'action') String? action,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'channel') String? channel,
    @JsonKey(name: 'channel_name') String? channelName,
    @JsonKey(name: 'target') String? target,
  }) = _DataNotification;

  factory DataNotification.fromJson(Map<String, dynamic> json) =>
      _$DataNotificationFromJson(json);

  const DataNotification._();
}
