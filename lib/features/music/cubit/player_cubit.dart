import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixel_lofi/features/music/cubit/player_state.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit()
    : super(
        PlayerState(
          progress: 0.0,
          current: Duration.zero,
          total: const Duration(minutes: 3, seconds: 45),
          isPlaying: false,
        ),
      );
  void togglePlay() {
    emit(state.copyWith(isPlaying: !state.isPlaying));
  }

  void seek(double value) {
    final seconds = (state.total.inSeconds * value).toInt();

    emit(
      state.copyWith(
        progress: value,
        current: Duration(seconds: seconds),
      ),
    );
  }
}
