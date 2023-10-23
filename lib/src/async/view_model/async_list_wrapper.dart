import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core.dart';
import 'list_wrapper.dart';

part 'async_list_wrapper.freezed.dart';

const defaultPageSize = 20;

@freezed
class AsyncListWrapper<T> with _$AsyncListWrapper<T> {
  const AsyncListWrapper._();
  const factory AsyncListWrapper({
    required Async<List<T>> data,
    Async<List<T>>? fetching,
    @Default(true) bool hasMoreData,
  }) = _AsyncListWrapper<T>;

  List<T> get dataOrEmpty => data() ?? [];

  ListWrapper<T> get listWrapper => ListWrapper(
        data: data() ?? [],
        hasMoreData: hasMoreData,
      );

  AsyncListWrapper<T> withNewAsync({
    required Async<List<T>> input,
    int pageSize = defaultPageSize,
  }) {
    return copyWith(
      data: input.map(
        loading: (_) => dataOrEmpty.isEmpty ? input : data,
        fail: (_) => dataOrEmpty.isEmpty ? input : data,
        success: (_) => Async.success([...dataOrEmpty, ...(_.data)]),
      ),
      fetching: input,
      hasMoreData: input.maybeMap(
        orElse: () => true,
        success: (_) => pageSize == _.data.length,
      ),
    );
  }

  AsyncListWrapper<T> addItemToHead(T input) {
    return copyWith(
      data: data.maybeMap(
        success: (_) => Async.success([input, ...dataOrEmpty]),
        orElse: () => data,
      ),
    );
  }
}
