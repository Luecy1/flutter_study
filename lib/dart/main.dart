import 'dart:developer';
import 'dart:math' as Math;

void main() {
  var hanList = List.generate(13, (index) {
    return index + 1;
  });

  var huList = List.generate(5, (index) {
    return 20 + index * 10;
  });

  for (var hu in huList) {
    for (var han in hanList) {
      log('${hu} 符 ${han} 翻 ${calc(hu, han)}');
    }
  }
}

// 子のロンあがりを計算する
int calc(int hu, int han) {
  final kihonten = hu * Math.pow(2, (2 + han));
  return ceil(kihonten * 4, 2);
}

// 指定桁数の切り上げ
int ceil(int base, int keta) {
  final kurai = Math.pow(10, keta);
  return ((base / kurai).ceil() * kurai);
}
