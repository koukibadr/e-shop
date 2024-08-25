import 'package:e_shop/core/api/api_handler.dart';
import 'package:e_shop/core/notification/notification_handler.dart';
import 'package:e_shop/core/session/secure_session_handler.dart';
import 'package:e_shop/core/session/secure_session_handler_impl.dart';
import 'package:e_shop/features/authentication/data/repositories/authentication_repository.dart';
import 'package:e_shop/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:e_shop/features/authentication/domain/usecases/auth_user_usecase.dart';
import 'package:e_shop/features/authentication/domain/usecases/guest_auth_usecase.dart';
import 'package:e_shop/features/authentication/ui/bloc/authentication_bloc.dart';
import 'package:e_shop/features/cart/ui/bloc/cart_bloc.dart';
import 'package:e_shop/features/products/data/repositories/product_repository.dart';
import 'package:e_shop/features/products/data/repositories/product_repository_impl.dart';
import 'package:e_shop/features/products/domain/usecases/get_product_usecase.dart';
import 'package:e_shop/features/products/ui/bloc/product_bloc.dart';
import 'package:e_shop/features/register/data/repositories/registration_repository.dart';
import 'package:e_shop/features/register/data/repositories/registration_repository_impl.dart';
import 'package:e_shop/features/register/domain/usecases/register_user_usecase.dart';
import 'package:e_shop/features/register/ui/bloc/register_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

GetIt getItInstance = GetIt.instance;

void initializeDI() {
  getItInstance.registerSingleton<ApiHelper>(ApiHelper());

  getItInstance.registerSingleton<SecureSessionHandler>(
    SecureSessionHandlerImpl(
      flutterSecureStorage: const FlutterSecureStorage(),
    ),
  );

  getItInstance.registerSingleton<NotificationHandler>(
    NotificationHandler(),
  );

  getItInstance.registerSingleton<ProductRepository>(
    ProductRepositoryImpl(
      apiHelper: getItInstance.get<ApiHelper>(),
    ),
  );

  getItInstance.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositoryImpl(
        secureSessionHandler: getItInstance.get<SecureSessionHandler>()),
  );

  getItInstance.registerSingleton<RegistrationRepository>(
    RegistrationRepositoryImpl(
        secureSessionHandler: getItInstance.get<SecureSessionHandler>()),
  );

  getItInstance.registerSingleton(
    GetProductUseCase(
      productRepository: getItInstance.get<ProductRepository>(),
    ),
  );

  getItInstance.registerSingleton<AuthenticateUserUseCase>(
    AuthenticateUserUseCase(
      authenticationRepository: getItInstance.get<AuthenticationRepository>(),
    ),
  );

  getItInstance.registerSingleton<GuestAuthenticationUseCase>(
    GuestAuthenticationUseCase(
      authenticationRepository: getItInstance.get<AuthenticationRepository>(),
    ),
  );

  getItInstance.registerSingleton<RegisterUserUsecase>(
    RegisterUserUsecase(
      registrationRepository: getItInstance.get<RegistrationRepository>(),
    ),
  );

  getItInstance.registerFactory(
    () => ProductBloc(
      getProductUseCase: getItInstance.get<GetProductUseCase>(),
      notificationHandler: getItInstance.get<NotificationHandler>(),
    ),
  );

  getItInstance.registerFactory(
    () => CartBloc(),
  );

  getItInstance.registerFactory<AuthenticationBloc>(
    () => AuthenticationBloc(
      authenticateUserUseCase: getItInstance.get<AuthenticateUserUseCase>(),
      guestAuthenticationUseCase:
          getItInstance.get<GuestAuthenticationUseCase>(),
    ),
  );

  getItInstance.registerFactory<RegisterBloc>(
    () => RegisterBloc(
      registerUserUsecase: getItInstance.get<RegisterUserUsecase>(),
    ),
  );
}
