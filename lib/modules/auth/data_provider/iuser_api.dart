abstract class IUserApi {
  Future<dynamic> getUser();
  Future<bool> userLogin(String username, String password);
  Future<bool> userSignUp(String username, String password, String name, String cpf);
}