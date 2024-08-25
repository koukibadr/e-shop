import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/features/register/domain/usecases/register_user_usecase.dart';
import 'package:e_shop/features/register/ui/bloc/register_events.dart';
import 'package:e_shop/features/register/ui/bloc/register_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterScreenState> {
  final RegisterUserUsecase registerUserUsecase;

  RegisterBloc({required this.registerUserUsecase})
      : super(RegisterScreenState()) {
    on<UpdateRegisterForm>((event, emitter) {
      emitter(state.copyWith(authenticationEntity: event.entity));
    });

    on<RegisterNewUser>((event, emitter) async {
      if (state.authenticationEntity.isValid) {
        emitter(
          state.copyWith(
            registerationResult: DataIsLoading(),
          ),
        );
        final registerResult = await registerUserUsecase.call(
          RegisterUserUsecaseParams(
            entity: state.authenticationEntity,
          ),
        );
        emitter(
          state.copyWith(
            registerationResult: registerResult,
          ),
        );
      } else {
        emitter(
          state.copyWith(
            registerationResult: FormError(),
          ),
        );
      }
    });
  }
}
