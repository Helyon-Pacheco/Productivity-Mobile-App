import '../models/user.dart';

class AuthenticationService {
  // Simulando um banco de dados de usuários com uma lista
  final List<User> _users = [
    User(
        id: '1',
        name: 'João',
        email: 'joao@example.com',
        password: '123456',
        profileImageUrl: ''),
  ];

  // Método para login
  Future<bool> login(String email, String password) async {
    try {

      // Inicializando a variável user como null
      User? user = null;

      // Encontrando o usuário na lista
      for (var u in _users) {
        if (u.email == email && u.password == password) {
          user = u;
          break;
        }
      }

      if (user != null) {
        // Usuário encontrado e senha corresponde
        return true;
      } else {
        // Usuário não encontrado ou senha não corresponde
        return false;
      }
    } catch (e) {
      // Tratamento de erro
      print('Erro durante o login: $e');
      return false;
    }
  }

  // Método para logout
  Future<void> logout() async {
    print('Usuário deslogado com sucesso');
  }
}
