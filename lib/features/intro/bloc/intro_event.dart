part of 'intro_bloc.dart';

@freezed
class IntroEvent with _$IntroEvent {
  const factory IntroEvent.loaded() = _Loaded;
  const factory IntroEvent.pageChanged(int index) = _PageChanged;
}
