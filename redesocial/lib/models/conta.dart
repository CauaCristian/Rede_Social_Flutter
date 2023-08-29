import '../views/components/Publicacao.dart';

class Conta {
  String _nome;
  String _senha;
  String _email;

  List<Conta> seguindo = [];
  List<Conta> seguindores = [];
  List<Publicacao> publicacoes = [];

  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get senha => this._senha;

  set senha(value) => this._senha = value;

  get email => this._email;

  Conta({
    required String nome,
    required String senha,
    required String email,
  })  : _email = email,
        _nome = nome,
        _senha = senha;
}
