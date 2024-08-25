import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationRepository {
  Future<DataResponse<UserCredential>> authenticateUser(
      {required AuthenticationEntity authenticationEntity});
  Future<DataResponse<UserCredential>> anonymousAuthentication();
}
