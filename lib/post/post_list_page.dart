import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:instamock/post/post_state.dart';

class PostListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final vm = useProvider(postListViewModelProvider);
    final state = useProvider(postListViewModelProvider.state);
    return Scaffold(
      body: Center(
        child: Text(state.message),
      ),
    );
  }
}
