class UserMock {
  int? idade;
  String usuario;
  final String email;

  UserMock(this.idade, this.usuario, this.email);

  factory UserMock.fromJson(Map<String, dynamic> json) {
    return UserMock(json['idade'], json['usuario'], json['email']);
  }

  Map<String, dynamic> toJson() =>
      {'idade': idade, 'usuario': usuario, 'email': email};
}
