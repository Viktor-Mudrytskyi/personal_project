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
}
