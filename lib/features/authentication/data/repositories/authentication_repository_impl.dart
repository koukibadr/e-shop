import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/authentication/data/repositories/authentication_repository.dart';
import 'package:dummy_product/features/authentication/domain/entities/authentication_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final FirebaseAuth firebaseAuth;

  AuthenticationRepositoryImpl({
    required this.firebaseAuth,
  });

  @override
  Future<DataResponse<UserCredential>> authenticateUser({
    required AuthenticationEntity authenticationEntity,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: authenticationEntity.email,
        password: authenticationEntity.password,
      );
      return DataResponse.completed(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return DataResponse.error(
        0,
        e.code,
      );
    }
  }
}
