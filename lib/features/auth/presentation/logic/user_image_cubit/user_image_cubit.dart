import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'user_image_state.dart';

class UserImageCubit extends Cubit<UserImageState> { 
  UserImageCubit() : super(UserImageInitial());
  File? imageFile;
  String ? imageLink;
  void pickImage() async{
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      imageFile = File(pickedImage.path);
      emit(UserImagePickedSuccess());
    }else{
      emit(UserImageFieldPicked());
    }
  }

  Future<String> uploadImage() async{
    Reference imageRef = FirebaseStorage.instance.ref().child('user/${imageFile!.path}');
    await imageRef.putFile(imageFile!);
    imageLink = await imageRef.getDownloadURL();
    return imageRef.getDownloadURL();
  }
}
