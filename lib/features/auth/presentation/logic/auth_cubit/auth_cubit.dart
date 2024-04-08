import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moment/features/auth/data/repository/auth_repository.dart';
import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(InitialAppState());

  void registerWithEmail({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _authRepository.registerWithEmail(email, password, name,);
      emit(UserSignSuccessState());
    } catch (e) {
      emit(FeiledCreatedUserState(massage: e.toString()));
    }
  }

  void signIn({required String email, required String password}) async {
    try {
      await _authRepository.signIn(email, password);
      emit(UserSignSuccessState());
    } catch (e) {
      emit(FeiledCreatedUserState(massage: e.toString()));
    }
  }

  void signOut() async{
    await _authRepository.signOut();
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await _authRepository.resetPassword(email);
      emit(SuccessResetPasswordState());
    } catch (e) {
      emit(FeiledResetPasswordState(massage: e.toString()));
    }
  }
  Future<void> uploadImageToFireStore({required String userImage}) async{
    try{
      emit(UploadImageToFireStoreSuccess());
      await _authRepository.uploadImageToFireStore(userImage:userImage );
    } catch (e){
      emit(FieldUploadImageToFireStore(massage: e.toString()));
    }
  }
}