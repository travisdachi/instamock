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
          body: ListView.separated(
            itemBuilder: (context, index) {
              final post = state.postList[index];
              return PostWidget(
                key: ValueKey(post.id),
                post: post,
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 16,
                width: double.infinity,
                color: Colors.grey.shade300,
              );
            },
            itemCount: state.postList.length,
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
        if (state.isLoading)
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
