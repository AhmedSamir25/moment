import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
part 'user_image_state.dart';

class UserImageCubit extends Cubit<UserImageState> { 
  UserImageCubit() : super(UserImageInitial());
  File? imageFile;
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
    Reference imageRef = FirebaseStorage.instance.ref(basename(imageFile!.path));
    await imageRef.putFile(imageFile!);
    return imageRef.getDownloadURL();
  }
}
