import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/core/utilities/usecase.dart';
import 'package:e_shop/features/authentication/data/repositories/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GuestAuthenticationUseCase
    extends UseCase<DataResponse<UserCredential>, GuestAuthParams> {
  final AuthenticationRepository authenticationRepository;

  GuestAuthenticationUseCase({
    required this.authenticationRepository,
  });

  @override
  Future<DataResponse<UserCredential>> call(GuestAuthParams params) {
    return authenticationRepository.anonymousAuthentication();
  }
}

class GuestAuthParams {}
