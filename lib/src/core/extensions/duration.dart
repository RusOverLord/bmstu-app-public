extension DurationToColonStringFormat on Duration {
  String toColonHM() => '$_twoDigitHour:$_twoDigitMinute';

  String toColonHMS() => '$_twoDigitHour:$_twoDigitMinute:$_twoDigitSecond';

  String twoDigits(int value) => value.toString().padLeft(2, "0");

  String get _twoDigitHour => twoDigits(hour);

  String get _twoDigitMinute => twoDigits(minute);

  String get _twoDigitSecond => twoDigits(second);

  int get hour => inHours.remainder(Duration.hoursPerDay);

  int get minute => inMinutes.remainder(Duration.minutesPerHour);

  int get second => inSeconds.remainder(Duration.secondsPerMinute);

  String toNamesHM() {
    final hour = this.hour;
    final minute = this.minute + 1;

    String time = '';

    if (hour != 0) {
      time += '$hourч';

      if (minute != 0) {
        time += ' ';
      }
    }

    if (minute != 0) {
      time += '$minuteмин';
    }

    return time;
  }
}
