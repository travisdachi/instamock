import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:instamock/shared/post_models.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

part 'compose_state.freezed.dart';

@freezed
abstract class CompostState implements _$CompostState {
  const CompostState._();

  const factory CompostState({
    required Map<String, double> uploadProgress,
    required bool isLoading,
    required List<Asset> images,
    required Map<String, Uint8List> imageThumbnails,
  }) = _CompostState;

  int get maximumPickableImage => 4 - images.length;
}

class ComposeViewModel extends StateNotifier<CompostState> {
  ComposeViewModel()
      : super(CompostState(
          uploadProgress: {},
          isLoading: false,
          images: [],
          imageThumbnails: {},
        ));

  Future<Post> addPost({required String message}) async {
    try {
      state = state.copyWith.call(isLoading: true);
      final doc = FirebaseFirestore.instance.collection('posts').doc();
      Post post;
      if (state.images.isNotEmpty) {
        final uploadTasks = state.images.map((asset) async {
          final ref = FirebaseStorage.instance.ref('images/${DateTime.now().millisecondsSinceEpoch}_${asset.name}');
          final byteData = await asset.getByteData();
          final task = ref.putData(byteData.buffer.asUint8List());
          await task;
          state = state.copyWith.call(
            uploadProgress: {
              ...state.uploadProgress,
              asset.identifier: 1.0,
            },
          );
          return task.snapshot.ref.getDownloadURL();
        });
        final remotePaths = await Future.wait(uploadTasks);
        post = Post(
          id: doc.id,
          username: 'anonymous',
          message: message,
          imageUrls: remotePaths,
          createdAt: DateTime.now().millisecondsSinceEpoch,
        );
      } else {
        post = Post(
          id: doc.id,
          username: 'anonymous',
          message: message,
          createdAt: DateTime.now().millisecondsSinceEpoch,
        );
      }
      await doc.set(post.toJson());
      state = state.copyWith.call(isLoading: false);
      return post;
    } catch (e, s) {
      state = state.copyWith.call(isLoading: false);
      throw e;
    }
  }

  Future<void> addImages(List<Asset> list) async {
    final thumbnails = Map<String, Uint8List>();
    await Future.wait(list.map((element) async {
      thumbnails[element.identifier] = (await element.getThumbByteData(360, 360)).buffer.asUint8List();
    }));
    state = state.copyWith.call(
      images: [
        ...state.images,
        ...list,
      ],
      imageThumbnails: {
        ...state.imageThumbnails,
        ...thumbnails,
      },
    );
  }
}

final composeViewModelProvider = StateNotifierProvider.autoDispose((ref) => ComposeViewModel());
