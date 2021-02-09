import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:instamock/compose/compose_page.dart';
import 'package:instamock/post_list/post_list_state.dart';
import 'package:instamock/post_list/post_widget.dart';
import 'package:instamock/shared/post_models.dart';

class PostListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final vm = useProvider(postListViewModelProvider);
    final state = useProvider(postListViewModelProvider.state);
    useEffect(() {
      vm.init();
    }, []);
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(title: Text('Instamock')),
          body: NotificationListener<ScrollNotification>(
            onNotification: (scroll) {
              if (scroll is ScrollUpdateNotification && scroll.metrics.extentAfter < 50) {
                vm.fetchMoreIfAny();
              }
              return false;
            },
            child: ListView.separated(
              itemBuilder: (context, index) {
                if (state.isLoadingMore && index == state.postCount - 1) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    color: Colors.grey.shade300,
                    child: CircularProgressIndicator(),
                  );
                } else {
                  final post = state.postList[index];
                  return PostWidget(
                    key: ValueKey(post.id),
                    post: post,
                  );
                }
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 16,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                );
              },
              itemCount: state.postCount,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push<Post?>(context, MaterialPageRoute(builder: (context) => ComposePage())).then((post) {
                if (post != null) {
                  vm.addNewPostFromLocal(post);
                }
              });
            },
          ),
        ),
        if (state.isInitializing)
          Material(
            color: Colors.black54,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
    );
  }
}
