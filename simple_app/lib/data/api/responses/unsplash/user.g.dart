// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          username: $checkedConvert('username', (v) => v as String),
          profileImage: $checkedConvert('profile_image',
              (v) => ProfileImage.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'profileImage': 'profile_image'},
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'username': instance.username,
      'profile_image': instance.profileImage,
    };
