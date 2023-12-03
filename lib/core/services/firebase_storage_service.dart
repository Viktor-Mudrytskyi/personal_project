import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  static FirebaseStorageService? _instance;
  final FirebaseStorage _storage;

  const FirebaseStorageService._internal({required FirebaseStorage storage})
      : _storage = storage;

  factory FirebaseStorageService() {
    _instance ??=
        FirebaseStorageService._internal(storage: FirebaseStorage.instance);
    return _instance!;
  }

  Future<String> getImage() async {
    final storageRef = _storage.ref();
    final fileRef = storageRef.child('2.png');
    final link = await fileRef.getDownloadURL();
    return link;
  }
}
