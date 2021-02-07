import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_models.freezed.dart';

part 'post_models.g.dart';

@freezed
abstract class Post implements _$Post {
  const Post._();

  const factory Post({
    required String id,
    required String username,
    required String message,
    required List<String> imageUrls,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
