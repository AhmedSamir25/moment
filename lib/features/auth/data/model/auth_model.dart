class AuthModel {
    String? name;
  String? email;
  String? userId;
  String? adress;
  int? phoneNumber;  
  AuthModel({required this.email, required this.name, required this.userId,
   required this.adress, required this.phoneNumber});
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