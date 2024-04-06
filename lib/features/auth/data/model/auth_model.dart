class AuthModel {
    String? name;
  String? email;
  String? userId;
  AuthModel({required this.email, required this.name, required this.userId,});
  AuthModel.fromJson({required Map<String, dynamic> data}) {
    name = data['name'];
    email = data['email'];
    userId = data['userId'];
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'userId': userId,
    };
  }
}