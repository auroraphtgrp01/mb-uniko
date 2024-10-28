import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState(isLoading: true));

  void test() {
    emit(state.copyWith(title: 'aaaaaavavas', isLoading: false, error: 'err'));
  }
}
