import 'package:dio/dio.dart';
import 'package:dummy_product/core/api/api_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiHelper {
  final dio = Dio();

  ApiHelper() {
    dio.options = BaseOptions(
      baseUrl: const String.fromEnvironment('BASEURL'),
      receiveTimeout: const Duration(seconds: 30),
    );

    dio.interceptors.addAll([
      PrettyDioLogger(),
      ApiInterceptor(),
    ]);
  }
}

class ApiEndpoints {
  static const String productEndpoint = "/products";
}
