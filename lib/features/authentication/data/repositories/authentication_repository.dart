import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/authentication/domain/entities/authentication_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationRepository {
  Future<DataResponse<UserCredential>> authenticateUser({required AuthenticationEntity authenticationEntity});
  Future<DataResponse<UserCredential>> anonymousAuthentication();
}
