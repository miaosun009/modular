import 'package:modular_core/modular_core.dart';
import 'package:flutter_modular/src/shared/either.dart';
import 'package:flutter_modular/src/domain/services/module_service.dart';

abstract class BindModule {
  Either<ModularError, Unit> call(BindContext context);
}

class BindModuleImpl implements BindModule {
  final ModuleService moduleService;

  BindModuleImpl(this.moduleService);

  @override
  Either<ModularError, Unit> call(BindContext binds) {
    return moduleService.bind(binds);
  }
}
