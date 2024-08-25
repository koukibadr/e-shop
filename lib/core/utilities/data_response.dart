import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';

@freezed
sealed class DataResponse<T> with _$DataResponse {
  factory DataResponse.completed(T data) = DataCompleted;
  factory DataResponse.loading() = DataIsLoading;
  factory DataResponse.error(int errorCode, String message) = DataError;
  factory DataResponse.formError() = FormError;
}
