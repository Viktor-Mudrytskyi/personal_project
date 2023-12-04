import 'dart:io';

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

  Future<String> uploadImage(File image) async {
    final name = image.path.split('/').last;

    final storageRef = _storage.ref();

    final imageRef = storageRef.child(name);

    await imageRef.putFile(image);
    final link = await imageRef.getDownloadURL();
    return link;
  }
}
