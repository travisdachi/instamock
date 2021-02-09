import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:instamock/post_list/page_indicator.dart';
import 'package:instamock/shared/post_models.dart';

class PostWidget extends HookWidget {
  final Post post;

  const PostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hasBothTextAndImage = post.message.isNotEmpty && post.imageUrls?.isNotEmpty == true;
    final currentPage = useState(0);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (post.message.isNotEmpty)
            Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(post.message),
            ),
          if (hasBothTextAndImage) SizedBox(height: 8),
          if (post.imageUrls?.isNotEmpty == true)
            Container(
              width: size.width,
              height: size.width,
              child: Stack(
                children: [
                  PageView(
                    children: post.imageUrls!.map((e) => Image.network(e)).toList(),
                    onPageChanged: (value) {
                      currentPage.value = value;
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: PageIndicator(
                        currentPage: currentPage.value,
                        pageCount: post.imageUrls!.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
