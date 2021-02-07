import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:instamock/post/post_list_page.dart';

class InstamockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: PostListPage(),
      ),
    );
  }
}
