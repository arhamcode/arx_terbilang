import 'package:flutter_test/flutter_test.dart';

import 'package:arx_terbilang/arx_terbilang.dart';

void main() {
  test('Return string', () {
    expect(Terbilang.angka(5431), isA<String>());
    expect(Terbilang.angka(2), isA<String>());
  });
}
