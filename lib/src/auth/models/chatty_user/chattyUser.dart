import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chattyUser.g.dart';
part 'chattyUser.freezed.dart';

@freezed
abstract class ChattyUser implements _$ChattyUser {
  const ChattyUser._();

  @JsonSerializable(explicitToJson: true)
  const factory ChattyUser(
      {required String firstName,
      required String lastName,
      required String uid,
      required String email}) = _ChattyUser;

  factory ChattyUser.fromJson(Map<String, dynamic> json) =>
      _$ChattyUserFromJson(json);
}
