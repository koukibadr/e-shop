import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/authentication/domain/entities/authentication_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_screen_state.freezed.dart';

@freezed
class AuthScreenState with _$AuthScreenState {
  factory AuthScreenState({
    @Default(AuthenticationEntity()) AuthenticationEntity authenticationEntity,
    DataResponse? authenticationResult,
  }) = _AuthScreenState;
}
