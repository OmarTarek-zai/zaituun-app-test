import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/ui/screens/sign_up/sign_up_screen_states.dart';

class SignUpViewModel extends StateNotifier<SignUpScreenStates> {
  SignUpViewModel() : super(const SignUpIdleState());

  static final provider =
      StateNotifierProvider<SignUpViewModel, SignUpScreenStates>(
    (ref) => SignUpViewModel(),
  );

  Future<void> signUp(String email, String password) async {
    state = const SignUpLoadingState();
    await Future.delayed(const Duration(seconds: 2));
    // Call the sign up API
    // If successful, call state = const SignUpSuccessState();
    // If failed, call state = SignUpErrorState('Error message');
    state = const SignUpIdleState();
  }
}
