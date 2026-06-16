typedef Stage<T> = ({bool Function(T)? condition, T Function(T) operation});

class Pipeline<T> {
  final List<Stage<T>> _stages = [];

  void addStage(Stage<T> stage) {
    _stages.add(stage);
  }

  void addStages(List<Stage<T>> stages) {
    _stages.addAll(stages);
  }

  T apply(T input) {
    return _stages.fold(input, (result, stage) {
      if (stage.condition == null || stage.condition!(result)) {
        return stage.operation(result);
      }
      return result;
    });
  }
}
