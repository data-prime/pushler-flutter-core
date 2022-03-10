// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channel _$$_ChannelFromJson(Map<String, dynamic> json) => _$_Channel(
      id: json['id'] as String,
      name: json['name'] as String,
      public: json['public'] as bool,
      pathURL: json['pathURL'] as String?,
      imageURL: json['imageURL'] as String?,
      createAt: DateTime.parse(json['createAt'] as String),
      changeAt: DateTime.parse(json['changeAt'] as String),
    );

Map<String, dynamic> _$$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'public': instance.public,
      'pathURL': instance.pathURL,
      'imageURL': instance.imageURL,
      'createAt': instance.createAt.toIso8601String(),
      'changeAt': instance.changeAt.toIso8601String(),
    };
