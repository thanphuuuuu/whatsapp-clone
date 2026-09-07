class RegisterRequestDto {
  final String fullName;
  final String email;
  final String username;
  final String password;

  const RegisterRequestDto({
    required this.fullName,
    required this.email,
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
    'fullName': fullName,
    'email': email,
    'username': username,
    'password': password,
  };
}
