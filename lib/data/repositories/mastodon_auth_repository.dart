import 'package:hooks_riverpod/hooks_riverpod.dart';

class MastodonAuthRepository {
  const MastodonAuthRepository(this.ref);

  final Ref ref;

  // Have access to local storage
  // When signing in or signing up, store the access tokens in local storage
  // When signing out, remove the access tokens from local storage
  // Have functions to check if the user is signed in
}
