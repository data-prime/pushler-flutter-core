import 'package:json_annotation/json_annotation.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel {
  String id;
  String name;
  bool public;
  String? pathURL;
  String? imageURL;
  DateTime createAt;
  DateTime changeAt;

  Channel({
    required this.id,
    required this.name,
    required this.public,
    required this.pathURL,
    required this.imageURL,
    required this.createAt,
    required this.changeAt,
  });

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
