import 'dart:async' as base_bloc;
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core.dart';

mixin StreamSubscriptionContainer {
  List<base_bloc.StreamSubscription?> _subscriptions = [];

  void addSubscription(base_bloc.StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }

  base_bloc.Future closeAllSubscriptions() async {
    _subscriptions.forEach((element) {
      element?.cancel();
    });
    _subscriptions.clear();
  }
}

extension StreamSubscriptionExtension<T> on base_bloc.StreamSubscription<T> {
  base_bloc.StreamSubscription addToBloc(StreamSubscriptionContainer input) {
    input.addSubscription(this);
    return this;
  }
}

abstract class BaseCubit<S> extends Cubit<S> with StreamSubscriptionContainer {
  BaseCubit(S state) : super(state);

  Stream<Async<T>> execute<T>(Future<T> call) async* {
    yield const Async.loading();
    try {
      final result = await call;
      yield Async.success(result);
    } catch (e, s) {
      log(s.toString());
      log(e.toString());
      yield Async.fail(AppException(e.toString()));
      addError(e);
    }
  }

  @override
  base_bloc.Future<void> close() {
    closeAllSubscriptions();
    return super.close();
  }

  void setup() {}
}
