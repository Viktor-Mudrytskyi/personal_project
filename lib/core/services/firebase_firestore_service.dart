import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreService {
  static FirebaseFirestoreService? _instance;
  final FirebaseFirestore _firestore;

  const FirebaseFirestoreService._internal(
      {required FirebaseFirestore firestore})
      : _firestore = firestore;

  factory FirebaseFirestoreService() {
    _instance ??= FirebaseFirestoreService._internal(
        firestore: FirebaseFirestore.instance);
    return _instance!;
  }

  Future<List<Map<String, dynamic>>> getTodo() async {
    final CollectionReference todos = _firestore.collection('To-Dos');
    final data = await todos.get();
    final jsonList =
        data.docs.map((e) => e.data() as Map<String, dynamic>).toList();
    return jsonList;
  }

  Future<void> createToDo(String title, String? imageUrl) async {
    final CollectionReference todos = _firestore.collection('To-Dos');
    await todos.add({
      'title': title,
      'imageUrl': imageUrl,
    });
  }
}
