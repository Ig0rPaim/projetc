class LoginController{

  String? _user;
  setUser(String value) => _user = value;
  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async{ // é um future pq vai buscar se o login ta correto
    return (_user == 'igor' && _pass == '1234');
  }
}