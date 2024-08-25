import 'dart:convert';

import 'package:e_shop/core/session/secure_session_handler.dart';
import 'package:e_shop/core/utilities/constant_values.dart';
import 'package:e_shop/features/authentication/domain/entities/authentication_entity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureSessionHandlerImpl extends SecureSessionHandler {
  final FlutterSecureStorage flutterSecureStorage;

  SecureSessionHandlerImpl({required this.flutterSecureStorage});

  @override
  Future<void> saveUserSession(AuthenticationEntity authenticateUser) async {
    flutterSecureStorage.write(
      key: SecureStorageKeys.userKey,
      value: jsonEncode(
        authenticateUser.toJson(),
      ),
    );
  }

  @override
  Future<AuthenticationEntity?> getUserSession() async {
    String? savedUser = await flutterSecureStorage.read(
      key: SecureStorageKeys.userKey,
    );
    try {
      AuthenticationEntity user = AuthenticationEntity.fromJson(
        jsonDecode(savedUser ?? ''),
      );
      return user;
    } catch (e) {
      return null;
    }
  }
}
