// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostListStateTearOff {
  const _$PostListStateTearOff();

  _PostListState call(
      {String message = 'Ahoy!', List<Post> postList = const []}) {
    return _PostListState(
      message: message,
      postList: postList,
    );
  }
}

/// @nodoc
const $PostListState = _$PostListStateTearOff();

/// @nodoc
mixin _$PostListState {
  String get message;
  List<Post> get postList;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res>;
  $Res call({String message, List<Post> postList});
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  final PostListState _value;
  // ignore: unused_field
  final $Res Function(PostListState) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? postList = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      postList: postList == freezed ? _value.postList : postList as List<Post>,
    ));
  }
}

/// @nodoc
abstract class _$PostListStateCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$PostListStateCopyWith(
          _PostListState value, $Res Function(_PostListState) then) =
      __$PostListStateCopyWithImpl<$Res>;
  @override
  $Res call({String message, List<Post> postList});
}

/// @nodoc
class __$PostListStateCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res>
    implements _$PostListStateCopyWith<$Res> {
  __$PostListStateCopyWithImpl(
      _PostListState _value, $Res Function(_PostListState) _then)
      : super(_value, (v) => _then(v as _PostListState));

  @override
  _PostListState get _value => super._value as _PostListState;

  @override
  $Res call({
    Object? message = freezed,
    Object? postList = freezed,
  }) {
    return _then(_PostListState(
      message: message == freezed ? _value.message : message as String,
      postList: postList == freezed ? _value.postList : postList as List<Post>,
    ));
  }
}

/// @nodoc
class _$_PostListState extends _PostListState {
  const _$_PostListState({this.message = 'Ahoy!', this.postList = const []})
      : super._();

  @JsonKey(defaultValue: 'Ahoy!')
  @override
  final String message;
  @JsonKey(defaultValue: const [])
  @override
  final List<Post> postList;

  @override
  String toString() {
    return 'PostListState(message: $message, postList: $postList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostListState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.postList, postList) ||
                const DeepCollectionEquality()
                    .equals(other.postList, postList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(postList);

  @JsonKey(ignore: true)
  @override
  _$PostListStateCopyWith<_PostListState> get copyWith =>
      __$PostListStateCopyWithImpl<_PostListState>(this, _$identity);
}

abstract class _PostListState extends PostListState {
  const _PostListState._() : super._();
  const factory _PostListState({String message, List<Post> postList}) =
      _$_PostListState;

  @override
  String get message;
  @override
  List<Post> get postList;
  @override
  @JsonKey(ignore: true)
  _$PostListStateCopyWith<_PostListState> get copyWith;
}
