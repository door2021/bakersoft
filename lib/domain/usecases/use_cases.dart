

abstract class UseCase<Type, Params> {
  Future<List<Type>> call(Params params);
}

class NoParams {}