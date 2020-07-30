import 'dart:developer';

void main() {
  var hanList = List.generate(13, (index) {
    return index + 1;
  });

  var huList = List.generate(5, (index) {
    return 20 + index * 10;
  });

  for (var han in hanList) {
    for (var hu in huList) {
      log('');
    }
  }

}
