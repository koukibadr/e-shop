import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/authentication/domain/usecases/auth_user_usecase.dart';
import 'package:dummy_product/features/authentication/domain/usecases/guest_auth_usecase.dart';
import 'package:dummy_product/features/authentication/ui/bloc/auth_screen_state.dart';
import 'package:dummy_product/features/authentication/ui/bloc/authentication_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthScreenState> {
  final AuthenticateUserUseCase authenticateUserUseCase;
  final GuestAuthenticationUseCase guestAuthenticationUseCase;

  AuthenticationBloc({
    required this.authenticateUserUseCase,
    required this.guestAuthenticationUseCase,
  }) : super(AuthScreenState()) {
    on<UpdateAuthEntityEvent>((event, emitter) {
      emitter(
        state.copyWith(
          authenticationEntity: event.entity,
          authenticationResult: null,
        ),
      );
    });

    on<AuthenticateUserEvent>((event, emitter) async {
      if (state.authenticationEntity.isValid) {
        emitter(
          state.copyWith(
            authenticationResult: DataIsLoading(),
          ),
        );
        var authenticationResponse = await authenticateUserUseCase.call(
          AuthUserParams(state.authenticationEntity),
        );
        emitter(
          state.copyWith(
            authenticationResult: authenticationResponse,
          ),
        );
      } else {
        emitter(
          state.copyWith(
            authenticationResult: FormError(),
          ),
        );
      }
    });

    on<GuestAuthenticationEvent>((event, emitter) async {
      emitter(
        state.copyWith(
          authenticationResult: DataIsLoading(),
        ),
      );
      var authenticationResponse = await guestAuthenticationUseCase.call(
        GuestAuthParams(),
      );
      emitter(
        state.copyWith(
          authenticationResult: authenticationResponse,
        ),
      );
    });
  }
}
