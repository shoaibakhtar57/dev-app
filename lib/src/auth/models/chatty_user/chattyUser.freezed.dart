// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chattyUser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattyUser _$ChattyUserFromJson(Map<String, dynamic> json) {
  return _ChattyUser.fromJson(json);
}

/// @nodoc
class _$ChattyUserTearOff {
  const _$ChattyUserTearOff();

  _ChattyUser call(
      {required String firstName,
      required String lastName,
      required String uid,
      required String email}) {
    return _ChattyUser(
      firstName: firstName,
      lastName: lastName,
      uid: uid,
      email: email,
    );
  }

  ChattyUser fromJson(Map<String, Object> json) {
    return ChattyUser.fromJson(json);
  }
}

/// @nodoc
const $ChattyUser = _$ChattyUserTearOff();

/// @nodoc
mixin _$ChattyUser {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattyUserCopyWith<ChattyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattyUserCopyWith<$Res> {
  factory $ChattyUserCopyWith(
          ChattyUser value, $Res Function(ChattyUser) then) =
      _$ChattyUserCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName, String uid, String email});
}

/// @nodoc
class _$ChattyUserCopyWithImpl<$Res> implements $ChattyUserCopyWith<$Res> {
  _$ChattyUserCopyWithImpl(this._value, this._then);

  final ChattyUser _value;
  // ignore: unused_field
  final $Res Function(ChattyUser) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? uid = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChattyUserCopyWith<$Res> implements $ChattyUserCopyWith<$Res> {
  factory _$ChattyUserCopyWith(
          _ChattyUser value, $Res Function(_ChattyUser) then) =
      __$ChattyUserCopyWithImpl<$Res>;
  @override
  $Res call({String firstName, String lastName, String uid, String email});
}

/// @nodoc
class __$ChattyUserCopyWithImpl<$Res> extends _$ChattyUserCopyWithImpl<$Res>
    implements _$ChattyUserCopyWith<$Res> {
  __$ChattyUserCopyWithImpl(
      _ChattyUser _value, $Res Function(_ChattyUser) _then)
      : super(_value, (v) => _then(v as _ChattyUser));

  @override
  _ChattyUser get _value => super._value as _ChattyUser;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? uid = freezed,
    Object? email = freezed,
  }) {
    return _then(_ChattyUser(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChattyUser extends _ChattyUser {
  const _$_ChattyUser(
      {required this.firstName,
      required this.lastName,
      required this.uid,
      required this.email})
      : super._();

  factory _$_ChattyUser.fromJson(Map<String, dynamic> json) =>
      _$_$_ChattyUserFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String uid;
  @override
  final String email;

  @override
  String toString() {
    return 'ChattyUser(firstName: $firstName, lastName: $lastName, uid: $uid, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChattyUser &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ChattyUserCopyWith<_ChattyUser> get copyWith =>
      __$ChattyUserCopyWithImpl<_ChattyUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChattyUserToJson(this);
  }
}

abstract class _ChattyUser extends ChattyUser {
  const factory _ChattyUser(
      {required String firstName,
      required String lastName,
      required String uid,
      required String email}) = _$_ChattyUser;
  const _ChattyUser._() : super._();

  factory _ChattyUser.fromJson(Map<String, dynamic> json) =
      _$_ChattyUser.fromJson;

  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChattyUserCopyWith<_ChattyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
