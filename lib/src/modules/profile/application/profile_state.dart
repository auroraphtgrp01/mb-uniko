class ProfileState {
  final bool isLoading;
  final String? error;
  final String? title;

  const ProfileState({this.isLoading = false, this.error, this.title});

  ProfileState copyWith({
    bool? isLoading,
    String? error,
    String? title,
  }) {
    return ProfileState(
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error,
        title: title);
  }
}
