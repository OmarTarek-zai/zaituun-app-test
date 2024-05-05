import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/ui/screens/login/login_screen_states.dart';

class LoginScreenViewModel extends StateNotifier<LoginScreenStates> {
  LoginScreenViewModel() : super(const LoginIdleState());

  static final provider =
      StateNotifierProvider<LoginScreenViewModel, LoginScreenStates>(
    (ref) => LoginScreenViewModel(),
  );

  Future<void> login(String email, String password) async {
    state = const LoginLoadingState();
    await Future.delayed(const Duration(seconds: 2));
    // Call the login API
    // If successful, call state = const LoginSuccessState();
    // If failed, call state = LoginErrorState('Error message');
    state = const LoginIdleState();
  }
}
