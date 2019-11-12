import 'dart:async';

int time = 6;

void main() {
  startCountdownTimer();
}

void startCountdownTimer() {
  const oneSec = const Duration(seconds: 1);

  var _timer;

  var callback = (timer) {
    if (time < 1) {
      _timer.cancel();
    } else {
      time = time - 1;
      print(time);
    }
  };

  _timer = Timer.periodic(oneSec, callback);
}
