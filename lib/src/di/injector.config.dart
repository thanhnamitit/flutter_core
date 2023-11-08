// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/core.dart' as _i6;
import 'package:core/src/di/module.dart' as _i8;
import 'package:core/src/iap/iap_preferences.dart' as _i3;
import 'package:core/src/iap/repository/iap_repository_impl.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:qonversion_flutter/qonversion_flutter.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final module = _$Module();
    gh.factory<_i3.IAPPreferences>(
        () => _i3.IAPPreferences(gh<_i4.SharedPreferences>()));
    gh.factory<_i5.Qonversion>(() => module.qonversion);
    gh.lazySingleton<_i6.IAPRepository>(() => _i7.IAPRepositoryImpl(
          gh<_i5.Qonversion>(),
          gh<_i6.IAPPreferences>(),
        ));
    return this;
  }
}

class _$Module extends _i8.Module {}
