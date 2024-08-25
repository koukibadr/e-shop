import 'package:dummy_product/core/session/secure_session_handler.dart';
import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/authentication/data/repositories/authentication_repository.dart';
import 'package:dummy_product/features/authentication/domain/entities/authentication_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final SecureSessionHandler secureSessionHandler;

  AuthenticationRepositoryImpl({required this.secureSessionHandler});

  @override
  Future<DataResponse<UserCredential>> authenticateUser({
    required AuthenticationEntity authenticationEntity,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: authenticationEntity.email,
        password: authenticationEntity.password,
      );
      await secureSessionHandler.saveUserSession(authenticationEntity);
      return DataResponse.completed(credential);
    } on FirebaseAuthException catch (e) {
      return DataResponse.error(
        0,
        e.code,
      );
    }
  }

  @override
  Future<DataResponse<UserCredential>> anonymousAuthentication() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      return DataCompleted(userCredential);
    } on FirebaseAuthException catch (e) {
      return DataError(0, e.code);
    }
  }
}
