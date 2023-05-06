
abstract class AuthRepository {
  Future<void> registerUserWEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signInWEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logOut();
}
