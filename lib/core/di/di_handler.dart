import 'package:dummy_product/core/api/api_handler.dart';
import 'package:dummy_product/core/session/secure_session_handler.dart';
import 'package:dummy_product/core/session/secure_session_handler_impl.dart';
import 'package:dummy_product/features/authentication/data/repositories/authentication_repository.dart';
import 'package:dummy_product/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:dummy_product/features/authentication/domain/usecases/auth_user_usecase.dart';
import 'package:dummy_product/features/authentication/domain/usecases/guest_auth_usecase.dart';
import 'package:dummy_product/features/authentication/ui/bloc/authentication_bloc.dart';
import 'package:dummy_product/features/cart/ui/bloc/cart_bloc.dart';
import 'package:dummy_product/features/products/data/repositories/product_repository.dart';
import 'package:dummy_product/features/products/data/repositories/product_repository_impl.dart';
import 'package:dummy_product/features/products/domain/usecases/get_product_usecase.dart';
import 'package:dummy_product/features/products/ui/bloc/product_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

GetIt getItInstance = GetIt.instance;

void initializeDI() {
  getItInstance.registerSingleton<ApiHelper>(ApiHelper());
  getItInstance
      .registerSingleton<SecureSessionHandler>(SecureSessionHandlerImpl(
    flutterSecureStorage: const FlutterSecureStorage(),
  ));

  getItInstance.registerSingleton<ProductRepository>(
    ProductRepositoryImpl(
      apiHelper: getItInstance.get<ApiHelper>(),
    ),
  );

  getItInstance.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositoryImpl(
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

  getItInstance.registerFactory(
    () => ProductBloc(
      getProductUseCase: getItInstance.get<GetProductUseCase>(),
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
}
