class PlayerState {
  final double progress;
  final Duration current;
  final Duration total;
  final bool isPlaying;

  const PlayerState({
    required this.progress,
    required this.current,
    required this.total,
    required this.isPlaying,
  });
  PlayerState copyWith({
    double? progress,
    Duration? current,
    Duration? total,
    bool? isPlaying,
  }) {
    return PlayerState(
      progress: progress ?? this.progress,
      current: current ?? this.current,
      total: total ?? this.total,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
