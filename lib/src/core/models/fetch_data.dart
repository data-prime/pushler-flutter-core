import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pushler_core/src/core/models/model.dart';

part 'fetch_data.freezed.dart';

part 'fetch_data.g.dart';

@freezed
class FetchData with _$FetchData {
  const factory FetchData({
    @JsonKey(name: 'result') bool? result,
    @JsonKey(name: 'subscriptions') List<Subscription>? subscriptions,
    @JsonKey(name: 'notifications') List<Notification>? notifications,
    @JsonKey(name: 'uuid') String? uuid,
  }) = _FetchData;

  factory FetchData.fromJson(Map<String, dynamic> json) =>
      _$FetchDataFromJson(json);

  const FetchData._();
}
