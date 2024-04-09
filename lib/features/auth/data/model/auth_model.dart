class AuthModel {
    String? name;
  String? email;
  String? userId;
  String? userImage;
  AuthModel({required this.email, required this.name, required this.userId,
  required this.userImage,
  });
  AuthModel.fromJson({required Map<String, dynamic> data}) {
    name = data['name'];
    email = data['email'];
    userId = data['userId'];
    userImage = data['userImage'];
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'userId': userId,
      'userImage':userImage,
    };
  }
}