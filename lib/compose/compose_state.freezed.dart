// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'compose_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CompostStateTearOff {
  const _$CompostStateTearOff();

  _CompostState call(
      {required Map<String, double> uploadProgress,
      required bool isLoading,
      required List<Asset> images,
      required Map<String, Uint8List> imageThumbnails}) {
    return _CompostState(
      uploadProgress: uploadProgress,
      isLoading: isLoading,
      images: images,
      imageThumbnails: imageThumbnails,
    );
  }
}

/// @nodoc
const $CompostState = _$CompostStateTearOff();

/// @nodoc
mixin _$CompostState {
  Map<String, double> get uploadProgress;
  bool get isLoading;
  List<Asset> get images;
  Map<String, Uint8List> get imageThumbnails;

  @JsonKey(ignore: true)
  $CompostStateCopyWith<CompostState> get copyWith;
}

/// @nodoc
abstract class $CompostStateCopyWith<$Res> {
  factory $CompostStateCopyWith(
          CompostState value, $Res Function(CompostState) then) =
      _$CompostStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, double> uploadProgress,
      bool isLoading,
      List<Asset> images,
      Map<String, Uint8List> imageThumbnails});
}

/// @nodoc
class _$CompostStateCopyWithImpl<$Res> implements $CompostStateCopyWith<$Res> {
  _$CompostStateCopyWithImpl(this._value, this._then);

  final CompostState _value;
  // ignore: unused_field
  final $Res Function(CompostState) _then;

  @override
  $Res call({
    Object? uploadProgress = freezed,
    Object? isLoading = freezed,
    Object? images = freezed,
    Object? imageThumbnails = freezed,
  }) {
    return _then(_value.copyWith(
      uploadProgress: uploadProgress == freezed
          ? _value.uploadProgress
          : uploadProgress as Map<String, double>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      images: images == freezed ? _value.images : images as List<Asset>,
      imageThumbnails: imageThumbnails == freezed
          ? _value.imageThumbnails
          : imageThumbnails as Map<String, Uint8List>,
    ));
  }
}

/// @nodoc
abstract class _$CompostStateCopyWith<$Res>
    implements $CompostStateCopyWith<$Res> {
  factory _$CompostStateCopyWith(
          _CompostState value, $Res Function(_CompostState) then) =
      __$CompostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, double> uploadProgress,
      bool isLoading,
      List<Asset> images,
      Map<String, Uint8List> imageThumbnails});
}

/// @nodoc
class __$CompostStateCopyWithImpl<$Res> extends _$CompostStateCopyWithImpl<$Res>
    implements _$CompostStateCopyWith<$Res> {
  __$CompostStateCopyWithImpl(
      _CompostState _value, $Res Function(_CompostState) _then)
      : super(_value, (v) => _then(v as _CompostState));

  @override
  _CompostState get _value => super._value as _CompostState;

  @override
  $Res call({
    Object? uploadProgress = freezed,
    Object? isLoading = freezed,
    Object? images = freezed,
    Object? imageThumbnails = freezed,
  }) {
    return _then(_CompostState(
      uploadProgress: uploadProgress == freezed
          ? _value.uploadProgress
          : uploadProgress as Map<String, double>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      images: images == freezed ? _value.images : images as List<Asset>,
      imageThumbnails: imageThumbnails == freezed
          ? _value.imageThumbnails
          : imageThumbnails as Map<String, Uint8List>,
    ));
  }
}

/// @nodoc
class _$_CompostState extends _CompostState {
  const _$_CompostState(
      {required this.uploadProgress,
      required this.isLoading,
      required this.images,
      required this.imageThumbnails})
      : super._();

  @override
  final Map<String, double> uploadProgress;
  @override
  final bool isLoading;
  @override
  final List<Asset> images;
  @override
  final Map<String, Uint8List> imageThumbnails;

  @override
  String toString() {
    return 'CompostState(uploadProgress: $uploadProgress, isLoading: $isLoading, images: $images, imageThumbnails: $imageThumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CompostState &&
            (identical(other.uploadProgress, uploadProgress) ||
                const DeepCollectionEquality()
                    .equals(other.uploadProgress, uploadProgress)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.imageThumbnails, imageThumbnails) ||
                const DeepCollectionEquality()
                    .equals(other.imageThumbnails, imageThumbnails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uploadProgress) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(imageThumbnails);

  @JsonKey(ignore: true)
  @override
  _$CompostStateCopyWith<_CompostState> get copyWith =>
      __$CompostStateCopyWithImpl<_CompostState>(this, _$identity);
}

abstract class _CompostState extends CompostState {
  const _CompostState._() : super._();
  const factory _CompostState(
      {required Map<String, double> uploadProgress,
      required bool isLoading,
      required List<Asset> images,
      required Map<String, Uint8List> imageThumbnails}) = _$_CompostState;

  @override
  Map<String, double> get uploadProgress;
  @override
  bool get isLoading;
  @override
  List<Asset> get images;
  @override
  Map<String, Uint8List> get imageThumbnails;
  @override
  @JsonKey(ignore: true)
  _$CompostStateCopyWith<_CompostState> get copyWith;
}
