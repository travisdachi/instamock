import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:instamock/compose/compose_state.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class ComposePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final vm = useProvider(composeViewModelProvider);
    final CompostState state = useProvider(composeViewModelProvider.state);
    final textController = useTextEditingController();
    useValueListenable(textController);
    final buttonEnabled = state.imageThumbnails.isNotEmpty || textController.text.isNotEmpty;
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(title: Text('Compose')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: textController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "What's on your mind?",
                          ),
                          maxLength: 200,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        ),
                        SizedBox(height: 16),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            ...state.imageThumbnails.map((key, thumb) {
                              final progress = state.uploadProgress[key];
                              final w = Container(
                                width: 120,
                                height: 120,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.memory(thumb),
                                    if (progress == 1.0)
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 48,
                                      )
                                    else if (progress != null)
                                      CircularProgressIndicator(value: progress),
                                  ],
                                ),
                              );
                              return MapEntry(key, w);
                            }).values,
                            if (state.maximumPickableImage > 0)
                              Container(
                                color: Colors.black12,
                                width: 120,
                                height: 120,
                                child: IconButton(
                                  icon: Icon(Icons.add_photo_alternate),
                                  onPressed: () {
                                    MultiImagePicker.pickImages(maxImages: state.maximumPickableImage).then((list) {
                                      vm.addImages(list);
                                    });
                                  },
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
                bottom: true,
                minimum: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: ElevatedButton(
                  child: Text(buttonEnabled ? 'Post' : 'Add text or image'),
                  onPressed: buttonEnabled
                      ? () {
                          vm.addPost(message: textController.text).then(
                            (post) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Posted!'),
                                backgroundColor: Colors.green,
                              ));
                              Navigator.pop(context, post);
                            },
                            onError: (e, s) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(e.toString()),
                                backgroundColor: Colors.red,
                              ));
                            },
                          );
                        }
                      : null,
                ),
              ),
            ],
          ),
        ),
        if (state.isLoading)
          Material(
            color: Colors.black54,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
      ],
    );
  }
}
