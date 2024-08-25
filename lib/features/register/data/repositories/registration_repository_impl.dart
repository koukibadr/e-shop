import 'package:e_shop/core/session/secure_session_handler.dart';
import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:e_shop/features/register/data/repositories/registration_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationRepositoryImpl extends RegistrationRepository {
  final SecureSessionHandler secureSessionHandler;

  RegistrationRepositoryImpl({required this.secureSessionHandler});

  @override
  Future<DataResponse<UserCredential>> createNewUserAccount(
    AuthenticationEntity entity,
  ) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: entity.email,
        password: entity.password,
      );
      await secureSessionHandler.saveUserSession(entity);
      return DataResponse.completed(credential);
    } on FirebaseException catch (e) {
      return DataError(0, e.code);
    }
  }
}
