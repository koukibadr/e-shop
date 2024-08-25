import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/core/utilities/usecase.dart';
import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:e_shop/features/register/data/repositories/registration_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterUserUsecase
    extends UseCase<DataResponse<UserCredential>, RegisterUserUsecaseParams> {
  final RegistrationRepository registrationRepository;

  RegisterUserUsecase({
    required this.registrationRepository,
  });

  @override
  Future<DataResponse<UserCredential>> call(RegisterUserUsecaseParams params) {
    return registrationRepository.createNewUserAccount(params.entity);
  }
}

class RegisterUserUsecaseParams {
  AuthenticationEntity entity;

  RegisterUserUsecaseParams({
    required this.entity,
  });
}
