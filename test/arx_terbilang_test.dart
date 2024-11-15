import 'package:flutter_test/flutter_test.dart';

import 'package:arx_terbilang/arx_terbilang.dart';

void main() {
  test('Return string', () {
    final terbilang = Terbilang();
    expect(terbilang.createInt(5431), isA<String>());
    expect(terbilang.createInt(0), isA<String>());
  });
}
