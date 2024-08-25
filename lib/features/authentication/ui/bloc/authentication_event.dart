import 'package:dummy_product/features/authentication/domain/entities/authentication_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.freezed.dart';

@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.updateAuthenticationEntity(
    AuthenticationEntity entity,
  ) = UpdateAuthEntityEvent;

  const factory AuthenticationEvent.authenticateUser() = AuthenticateUserEvent;
}
