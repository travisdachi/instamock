# instamock

A really simple text and image posting app.

## Run the project

- Use the latest build of Flutter beta `flutter channel beta && flutter upgrade`
- Get dependencies `flutter pub get`
- Run with unsound null safety mode `flutter run --no-sound-null-safety`
- Tested on Pixel 4, iOS Simulator

## Logic, 3rd Party Libraries, and Why Use Them

- Source files is organized by pages, shared files stay in `shared` directory.
- Firebase Firestore is used as database
- Firebase Storage is uses as image storage
- dartx is a Kotlin style utility package, provides extension methods to several classes, most notably, `Iterable`
- flutter_hooks is somewhat a replacement for `StatefulWidget`, it helps reduce boilerplate code, just like React hooks
- hooks_riverpod is hook-friendly riverpod. Riverpod is a state management pattern (plus dependency injection). Riverpod is an alternative/improvement from Provider. Fun fact: the name "riverpod" is just a name "provider" but switching the characters around.
- freezed is used to generate immutable data structure (including `copyWith()` and `equals`)
- Immutable data structure makes the state much more predictable.
- Each page has 1 immutable `State` and 1 `ViewModel`
- `ViewModel<T>` is a `StateNotifier<T>` which contains the logic for each page and produce a listenable state.
- Each page subscribes to `ViewModel`, listens to the `State` and build widgets accordingly.
- On page initialization or on user interaction, a method on `ViewModel` is called, the logic get executed and produces a new `State`
- Flutter beta channel is used in order to enable "null safety" mode which makes the code much safer from null.
- However, not all the dependencies support null-safety, so the app can't run in "sound" null safety mode. Hence, the flag `--no-sound-null-safety`.
- Sound null safety means that the compiler can guarantee nullability **at compile time** for all the code, where unsound null safety means the compiler can't
- Still, unsound null safety mode makes our own code safe from null, we just have to be careful when writing code with legacy library (the library that does not support null-safety) 