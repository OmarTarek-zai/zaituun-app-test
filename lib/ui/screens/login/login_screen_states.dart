sealed class LoginScreenStates {
  const LoginScreenStates();
}

class LoginIdleState extends LoginScreenStates {
  const LoginIdleState();
}

class LoginLoadingState extends LoginScreenStates {
  const LoginLoadingState();
}

class LoginErrorState extends LoginScreenStates {
  final String errorMessage;

  const LoginErrorState(this.errorMessage);
}
