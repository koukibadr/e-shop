import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_events.freezed.dart';

@freezed
sealed class RegisterEvents with _$RegisterEvents {
  const factory RegisterEvents.updateRegisterForm(
    AuthenticationEntity entity,
  ) = UpdateRegisterForm;

  const factory RegisterEvents.registerNewUser() = RegisterNewUser;
}
