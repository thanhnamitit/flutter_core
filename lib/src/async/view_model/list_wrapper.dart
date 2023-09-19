import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_wrapper.freezed.dart';

@freezed
class ListWrapper<T> with _$ListWrapper<T> {
  const factory ListWrapper({
    @Default([]) List<T> data,
    @Default(true) bool hasMoreData,
  }) = _ListWrapper<T>;
}
