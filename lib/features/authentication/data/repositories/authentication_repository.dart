import 'package:dummy_product/core/utilities/data_response.dart';

abstract class AuthenticationRepository {
  Future<DataResponse> authenticateUser();
}
