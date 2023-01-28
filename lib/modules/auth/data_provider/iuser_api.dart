abstract class IUserApi {
  Future<dynamic> getUser();
  Future<void> userLogin(String username, String password);
}