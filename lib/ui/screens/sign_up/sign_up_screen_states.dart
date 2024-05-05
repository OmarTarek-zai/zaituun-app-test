sealed class SignUpScreenStates {
  const SignUpScreenStates();
}

class SignUpIdleState extends SignUpScreenStates {
  const SignUpIdleState();
}

class SignUpLoadingState extends SignUpScreenStates {
  const SignUpLoadingState();
}

class SignUpErrorState extends SignUpScreenStates {
  final String errorMessage;

  const SignUpErrorState(this.errorMessage);
}
