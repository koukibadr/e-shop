
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_entity.freezed.dart';

@freezed
class AuthenticationEntity with _$AuthenticationEntity {
  
  factory AuthenticationEntity({
    @Default('') String email,
    @Default('') String password,
  }) = _AuthenticationEntity;

}