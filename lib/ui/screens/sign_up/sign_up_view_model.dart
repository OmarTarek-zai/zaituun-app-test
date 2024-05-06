import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/core/network/api/mastodon_api.dart';
import 'package:zaituun/ui/screens/sign_up/sign_up_screen_states.dart';

class SignUpViewModel extends StateNotifier<SignUpScreenStates> {
  SignUpViewModel({required this.ref}) : super(const SignUpIdleState());
  final Ref ref;

  static final provider =
      StateNotifierProvider<SignUpViewModel, SignUpScreenStates>(
    (ref) => SignUpViewModel(ref: ref),
  );

  Future<void> signUp(String email, String password) async {
    state = const SignUpLoadingState();
    try {
      final response =
          await ref.read(mastodonTestApiProvider).register(email, password);
      print(response);
    } catch (e) {
      state = SignUpErrorState(e.toString());
      print(e.toString());
    }
    state = const SignUpIdleState();
  }
}
