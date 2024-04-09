abstract class AuthState {}

class InitialAppState extends AuthState{}

class UserSignSuccessState extends AuthState {}

class FeiledCreatedUserState extends AuthState {
  String massage;
  FeiledCreatedUserState({required  this.massage});
}

class FeiledSendUserDataState extends AuthState {
  String massage;
  FeiledSendUserDataState({required  this.massage});
}

class FeiledResetPasswordState extends AuthState {
  String massage;
  FeiledResetPasswordState({required  this.massage});
}

class SuccessResetPasswordState extends AuthState {}

class UploadImageToFireStoreSuccess extends AuthState {}

class FieldUploadImageToFireStore extends AuthState{
  String massage;
  FieldUploadImageToFireStore({required  this.massage});
}
class LoadingUploadImageToFireStore extends AuthState{}