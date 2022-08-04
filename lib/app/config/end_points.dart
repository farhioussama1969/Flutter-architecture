import '../services/local_storage.dart';

class EndPoints {
  String baseUrl = '';
}

class ApiAuthentication {
  static String authToken = '';

  void saveAuthToken(String authToken) {
    ApiAuthentication.authToken = authToken;
    LocalStorage().save('authToken', authToken);
  }

  Future<bool> isAuthTokenSaved() {
    return LocalStorage().isSaved('authToken');
  }

  Future<void> getAuthTokenLanguage() async {
    if (await isAuthTokenSaved()) {
      authToken = (await LocalStorage().read('authToken'))!;
    }
  }
}
