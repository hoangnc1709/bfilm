import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intro_event.dart';
part 'intro_state.dart';
part 'intro_bloc.freezed.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(const IntroState()) {
    on<_Loaded>(_onLoaded);
    on<_PageChanged>(_onPageChanged);
  }

  _onLoaded(_Loaded event, Emitter<IntroState> emit) {
    const introData = [
      {
        'title': 'Xem phim bất cứ đâu',
        'description': 'Xem phim bất cứ đâu chỉ với điện thoại của bạn',
      },
      {
        'title': 'Đa dạng thể loại phim',
        'description': 'Trải nghiệm xem phim từ đa dạng mọi thể loại ',
      },
      {
        'title': 'Hoàn toàn miễn phí',
        'description': 'Tất cả các bộ phim được chiếu hoàn toàn miễn phí',
      },
    ];

    emit(state.copyWith(
      currentIndex: 0,
      introData: introData,
    ));
  }

  _onPageChanged(_PageChanged event, Emitter<IntroState> emit) {
    emit(state.copyWith(currentIndex: event.index));
  }
}
