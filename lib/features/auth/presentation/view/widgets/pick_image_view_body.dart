import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/core/theme/text_style.dart';
import 'package:moment/features/auth/presentation/logic/user_image_cubit/user_image_cubit.dart';
import 'package:moment/features/auth/presentation/view/widgets/custom_elevated_button.dart';

class PickImageViewBody extends StatelessWidget {
  const PickImageViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final userPickedImage = BlocProvider.of<UserImageCubit>(context);
    return BlocBuilder<UserImageCubit, UserImageState>(
      builder: (context, state) {
        if (userPickedImage.imageFile == null) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 180),
            child: Center(
              child: Column(
                children: [
                   const CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      size: 110,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        userPickedImage.pickImage();
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.image,
                            color: Colors.blue,
                            size: 35,
                          ),
                          const SizedBox(
                            width: 10,
                            height:55,
                          ),
                          Text(
                            'Select Image',
                            style: StyleText.textStyle18.copyWith(
                              color: Colors.blue
                            ),
                          )
                        ],
                      )),
                      const SizedBox(height: 20,),
                      CustomElevatedButton(onPressed: (){},buttonText: 'استمرار',)
                ],
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 180),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                      backgroundImage: FileImage(userPickedImage.imageFile!),
                      radius: 85,
                      ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        userPickedImage.pickImage();
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.image,
                            color: Colors.blue,
                            size: 35,
                          ),
                          const SizedBox(
                            width: 10,
                            height:55,
                          ),
                          Text(
                            'Change Image',
                            style: StyleText.textStyle18.copyWith(
                              color: Colors.blue,
                          ),),
                        ],
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                  CustomElevatedButton(onPressed: (){
                    userPickedImage.uploadImage();
                    
                  },buttonText: 'استمرار',)

                ],
              ),
            ),
          );
        }
      },
    );
  }
}