part of 'user_image_cubit.dart';

@immutable
sealed class UserImageState {}

final class UserImageInitial extends UserImageState {}

final class UserImagePickedSuccess extends UserImageState {}

final class UserImageFieldPicked extends UserImageState {}
