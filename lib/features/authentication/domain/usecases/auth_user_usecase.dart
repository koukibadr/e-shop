import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/core/utilities/usecase.dart';
import 'package:dummy_product/features/authentication/data/repositories/authentication_repository.dart';
import 'package:dummy_product/features/authentication/domain/entities/authentication_entity.dart';

class AuthenticateUserUseCase extends UseCase<DataResponse, AuthUserParams> {
  final AuthenticationRepository authenticationRepository;
  AuthenticateUserUseCase({
    required this.authenticationRepository,
  });

  @override
  Future<DataResponse> call(AuthUserParams params) {
    return authenticationRepository.authenticateUser(
      authenticationEntity: params.entity,
    );
  }
}

class AuthUserParams {
  final AuthenticationEntity entity;
  AuthUserParams(this.entity);
}
