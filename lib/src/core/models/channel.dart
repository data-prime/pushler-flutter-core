import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';

part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'public') required bool public,
    @JsonKey(name: 'pathURL') String? pathURL,
    @JsonKey(name: 'imageURL') String? imageURL,
    @JsonKey(name: 'createAt') required DateTime createAt,
    @JsonKey(name: 'changeAt') required DateTime changeAt,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  const Channel._();
}
