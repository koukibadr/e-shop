import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_screen_state.freezed.dart';

@freezed
class RegisterScreenState with _$RegisterScreenState {
  factory RegisterScreenState({
    @Default(AuthenticationEntity()) AuthenticationEntity authenticationEntity,
    DataResponse? registerationResult,
  }) = _RegisterScreenState;
}