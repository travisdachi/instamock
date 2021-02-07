import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:instamock/post/post_models.dart';

part 'post_state.freezed.dart';

@freezed
abstract class PostListState implements _$PostListState {
  const PostListState._();

  const factory PostListState({
    @Default('Ahoy!') String message,
    @Default([]) List<Post> postList,
  }) = _PostListState;
}

class PostListViewModel extends StateNotifier<PostListState> {
  PostListViewModel() : super(PostListState());
}

final postListViewModelProvider = StateNotifierProvider((ref) => PostListViewModel());
