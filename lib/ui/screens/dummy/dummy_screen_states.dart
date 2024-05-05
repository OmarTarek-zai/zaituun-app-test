sealed class DummyScreenState {
  const DummyScreenState();
}

class SuccessfulState extends DummyScreenState {
  const SuccessfulState();
}

class ErrorState extends DummyScreenState {
  final String errorMessage;
  const ErrorState(this.errorMessage);
}

class LoadingState extends DummyScreenState {
  const LoadingState();
}
