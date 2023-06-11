class UserModel {
  final String name;
  final String email;
  final String lastName;
  UserModel({required this.name, required this.email, required this.lastName});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['first_name'],
        email: json['email'],
        lastName: json['last_name']);
  }
}
