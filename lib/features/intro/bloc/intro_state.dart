part of 'intro_bloc.dart';

@freezed
class IntroState with _$IntroState {
  const factory IntroState({
    @Default(0) int currentIndex,
    @Default([]) List<Map<String, dynamic>> introData,
  }) = _IntroState;
}
