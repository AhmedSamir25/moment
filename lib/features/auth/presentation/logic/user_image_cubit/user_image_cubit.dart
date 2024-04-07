import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'user_image_state.dart';

class UserImageCubit extends Cubit<UserImageState> { 
  UserImageCubit() : super(UserImageInitial());
  File? imageFile;
  void pickImage() async{
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      emit(UserImagePickedSuccess());
    }else{
      emit(UserImageFieldPicked());
    }
  }
}
