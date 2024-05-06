import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mastodon_api/mastodon_api.dart';
import 'package:mastodon_oauth2/mastodon_oauth2.dart' as mauth;

final mastodonTestApiProvider = Provider<MastodonZApi>((ref) {
  return MastodonZApi(
      instance: 'mastodon.social',
      clientId: 'TQnVCY302tnUsLO7_AovHU70nliz6BHyWs_Yp-kyts0',
      clientSecret: 'wsnZcbJfsVWhEQlYsLQ7TTiN4aheVL17f_TsNSp1UzQ');
});

class MastodonZApi {
  MastodonZApi({
    required this.instance,
    required this.clientId,
    required this.clientSecret,
    String accessToken =
        'MVuD5odb4fHiAulmMrSo4XiPhwqcCpZwFeHylbnTxvA', //The dev token
    String? refreshToken,
  })  : _refreshToken = refreshToken,
        _accessToken = accessToken;

  final String? _accessToken;
  final String? _refreshToken;
  final String instance;
  final String clientId;
  final String clientSecret;

  late final _api = MastodonApi(
      instance: instance,
      bearerToken: _accessToken ?? '',
      timeout: const Duration(seconds: 5),
      retryConfig: RetryConfig(maxAttempts: 3));

  /// ## Sign in to Mastodon
  /// Uses OAuth2 to authenticate the user
  ///
  /// Returns the user's access token
  Future<String> signIn() async {
    final oauth2 = mauth.MastodonOAuth2Client(
      // Specify mastodon instance like "mastodon.social"
      instance: instance,
      clientId: clientId,
      clientSecret: clientSecret,

      // Replace redirect url as you need.
      redirectUri: 'org.example.oauth://callback/',
      customUriScheme: 'org.example.oauth',
    );
    final response = await oauth2.executeAuthCodeFlow(scopes: [
      mauth.Scope.read,
      mauth.Scope.write,
      mauth.Scope.follow,
      mauth.Scope.push
    ], forceLogin: true);
    return response.accessToken;
  }

  Future<String> register(String email, String password) async {
    final response = await _api.v1.accounts.createAccount(
        username: email.split('@').first,
        email: email,
        password: password,
        //TODO: Change to get user agreement and make user choose locale or get from device
        agreement: true,
        locale: const Locale(country: Country.egypt, lang: Language.english));
    if (response.status.code != 200) {
      throw Exception(response.status.message);
    }
    return response.data.accessToken;
  }
}
