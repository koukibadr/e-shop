import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RegistrationRepository {
  Future<DataResponse<UserCredential>> createNewUserAccount(
      AuthenticationEntity entity);
}
