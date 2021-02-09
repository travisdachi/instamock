// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostListStateTearOff {
  const _$PostListStateTearOff();

  _PostListState call(
      {List<Post> postList = const [],
      bool isInitializing = false,
      bool isLoadingMore = false}) {
    return _PostListState(
      postList: postList,
      isInitializing: isInitializing,
      isLoadingMore: isLoadingMore,
    );
  }
}

/// @nodoc
const $PostListState = _$PostListStateTearOff();

/// @nodoc
mixin _$PostListState {
  List<Post> get postList;
  bool get isInitializing;
  bool get isLoadingMore;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res>;
  $Res call({List<Post> postList, bool isInitializing, bool isLoadingMore});
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
    Object? postList = freezed,
    Object? isInitializing = freezed,
    Object? isLoadingMore = freezed,
  }) {
    return _then(_value.copyWith(
      postList: postList == freezed ? _value.postList : postList as List<Post>,
      isInitializing: isInitializing == freezed
          ? _value.isInitializing
          : isInitializing as bool,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore as bool,
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
  $Res call({List<Post> postList, bool isInitializing, bool isLoadingMore});
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
    Object? postList = freezed,
    Object? isInitializing = freezed,
    Object? isLoadingMore = freezed,
  }) {
    return _then(_PostListState(
      postList: postList == freezed ? _value.postList : postList as List<Post>,
      isInitializing: isInitializing == freezed
          ? _value.isInitializing
          : isInitializing as bool,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore as bool,
    ));
  }
}

/// @nodoc
class _$_PostListState extends _PostListState {
  const _$_PostListState(
      {this.postList = const [],
      this.isInitializing = false,
      this.isLoadingMore = false})
      : super._();

  @JsonKey(defaultValue: const [])
  @override
  final List<Post> postList;
  @JsonKey(defaultValue: false)
  @override
  final bool isInitializing;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingMore;

  @override
  String toString() {
    return 'PostListState(postList: $postList, isInitializing: $isInitializing, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostListState &&
            (identical(other.postList, postList) ||
                const DeepCollectionEquality()
                    .equals(other.postList, postList)) &&
            (identical(other.isInitializing, isInitializing) ||
                const DeepCollectionEquality()
                    .equals(other.isInitializing, isInitializing)) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingMore, isLoadingMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postList) ^
      const DeepCollectionEquality().hash(isInitializing) ^
      const DeepCollectionEquality().hash(isLoadingMore);

  @JsonKey(ignore: true)
  @override
  _$PostListStateCopyWith<_PostListState> get copyWith =>
      __$PostListStateCopyWithImpl<_PostListState>(this, _$identity);
}

abstract class _PostListState extends PostListState {
  const _PostListState._() : super._();
  const factory _PostListState(
      {List<Post> postList,
      bool isInitializing,
      bool isLoadingMore}) = _$_PostListState;

  @override
  List<Post> get postList;
  @override
  bool get isInitializing;
  @override
  bool get isLoadingMore;
  @override
  @JsonKey(ignore: true)
  _$PostListStateCopyWith<_PostListState> get copyWith;
}
