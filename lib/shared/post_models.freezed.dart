// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required String id,
      required String username,
      required int createdAt,
      required String message,
      List<String>? imageUrls}) {
    return _Post(
      id: id,
      username: username,
      createdAt: createdAt,
      message: message,
      imageUrls: imageUrls,
    );
  }

  Post fromJson(Map<String, Object> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String get id;
  String get username;
  int get createdAt;
  String get message;
  List<String>? get imageUrls;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String username,
      int createdAt,
      String message,
      List<String>? imageUrls});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      message: message == freezed ? _value.message : message as String,
      imageUrls:
          imageUrls == freezed ? _value.imageUrls : imageUrls as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String username,
      int createdAt,
      String message,
      List<String>? imageUrls});
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_Post(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as int,
      message: message == freezed ? _value.message : message as String,
      imageUrls:
          imageUrls == freezed ? _value.imageUrls : imageUrls as List<String>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Post extends _Post {
  const _$_Post(
      {required this.id,
      required this.username,
      required this.createdAt,
      required this.message,
      this.imageUrls})
      : super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) =>
      _$_$_PostFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final int createdAt;
  @override
  final String message;
  @override
  final List<String>? imageUrls;

  @override
  String toString() {
    return 'Post(id: $id, username: $username, createdAt: $createdAt, message: $message, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(imageUrls);

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostToJson(this);
  }
}

abstract class _Post extends Post {
  const _Post._() : super._();
  const factory _Post(
      {required String id,
      required String username,
      required int createdAt,
      required String message,
      List<String>? imageUrls}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  int get createdAt;
  @override
  String get message;
  @override
  List<String>? get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith;
}
