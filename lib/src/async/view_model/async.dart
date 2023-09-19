import 'package:freezed_annotation/freezed_annotation.dart';

import '../../functional/app_exception.dart';

part 'async.freezed.dart';

@freezed
abstract class Async<T> implements _$Async<T> {
  const Async._();

  const factory Async.loading({T? data}) = Loading<T>;

  const factory Async.success(T data) = Success<T>;

  const factory Async.fail(AppException exception) = Fail<T>;

  T? call() {
    if (this is Loading) {
      return (this as Loading).data;
    } else if (this is Success) {
      return (this as Success).data;
    } else {
      return null;
    }
  }

  Async<R> mapTo<R>(R Function(T data) transform) {
    return map(
      loading: (_) => Async.loading(
        data: _.data == null ? null : transform(_.data!),
      ),
      success: (_) => Async.success(transform(_.data)),
      fail: (_) => Async.fail(_.exception),
    );
  }
}
