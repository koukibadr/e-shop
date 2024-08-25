import 'package:dio/dio.dart';
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
    ]);
  }
}

class ApiEndpoints {
  static const String productEndpoint = "/products";
}
