class UserCreationRequest {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
    String? gender;
  int? age;
  UserCreationRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password
  });
}