import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../async/async_support_mixin.dart';

final getIt = GetIt.instance;

abstract class BaseStatefulState<
    WIDGET extends StatefulWidget,
    BLOC extends BaseCubit<STATE>,
    STATE> extends State<WIDGET> with AsyncSupport {
  BLOC? _bloc;

  BLOC get bloc => _bloc!;

  BLOC createBloc() {
    assert(_bloc == null);
    return getIt();
  }

  Widget blocProvider({required Widget child}) {
    return BlocProvider.value(
      value: bloc,
      child: child,
    );
  }

  Widget blocBuilder({
    required Widget Function(STATE) builder,
  }) {
    return BlocBuilder<BLOC, STATE>(
      bloc: bloc,
      builder: (_, state) => builder(state),
    );
  }

  @override
  void initState() {
    super.initState();
    _bloc = createBloc()..setup();
  }

  @override
  void dispose() {
    _bloc?.close();
    super.dispose();
  }
}
