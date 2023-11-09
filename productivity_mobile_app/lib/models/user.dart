class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String profileImageUrl;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.profileImageUrl
  });

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      password: data['password'],
      profileImageUrl: data['profileImageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'profileImageUrl': profileImageUrl,
    };
  }
}
