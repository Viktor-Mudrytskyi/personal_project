import 'dart:io';

import '../../../core/core.dart';
import '../entities/entities.dart';

class ToDoUseCases {
  Future<List<ToDoEntity>> getToDoList() async {
    try {
      final documents = await FirebaseFirestoreService().getTodo();
      return documents
          .map(
            (e) => ToDoEntity(
              title: e['title'],
              imgUrl: e['imageUrl'],
            ),
          )
          .toList();
    } catch (_) {
      return [
        const ToDoEntity(
          title: 'title',
          imgUrl: null,
        )
      ];
    }
  }

  Future<String?> uploadImage(File image) async {
    try {
      final link = FirebaseStorageService().uploadImage(image);
      return link;
    } catch (_) {
      return null;
    }
  }

  Future<void> createToDo(String? imageUrl, String title) async {
    try {
      await FirebaseFirestoreService().createToDo(title, imageUrl);
    } catch (_) {}
  }
}
