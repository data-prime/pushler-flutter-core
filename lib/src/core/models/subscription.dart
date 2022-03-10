import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pushler_core/src/core/models/model.dart';

part 'subscription.freezed.dart';

part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'channel') required Channel channel,
    @JsonKey(name: 'tag') required String tag,
    @JsonKey(name: 'createAt') required DateTime createAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  const Subscription._();
}
