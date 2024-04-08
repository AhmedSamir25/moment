import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:moment/features/auth/data/local_data/save_user_id.dart';
import 'package:moment/features/auth/data/model/auth_model.dart';

class AuthRepository {
  
 //Sign up 
  Future<void> registerWithEmail(
      String email, String password, String name,) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
        SetUserId().setUserId(userId: userCredential.user!.uid);
    await sendUserDataToFirebase(
      userId: userCredential.user!.uid,
      name: name,
      email: email,
      userImage: '',
    );
  }

//Sign in
  Future<void> signIn(String email, String password) async {
     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);
        SetUserId().setUserId(userId: userCredential.user!.uid);
  }

  Future<void> signOut() async{
    await FirebaseAuth.instance.signOut();
  }

  Future<void> resetPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> sendUserDataToFirebase(
      {required String userId,
      required String name,
      required String email,
      required String userImage,
      }) async {
    AuthModel userModel = AuthModel(email: email, name: name, userId: userId,
    userImage:userImage,
    );
    await FirebaseFirestore.instance
        .collection('User')
        .doc(userId)
        .set(userModel.toJson());
  }
    Future<void> updateUser({required String userImage}) {
  return  FirebaseFirestore.instance.collection('User')
        .doc(SetUserId().getId())
    .update({'userImage': userImage});
    }
}