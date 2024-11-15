# arx_terbilang

arx_terbilang is a package to convert number to words in indonesia or english.

## Limitation

This package can hold up to `999 Quadrillion` until further updates.

### Example

```dart
import 'package:arx_terbilang/arx_terbilang.dart';

int number = 112323423442322;
print(Terbilang.angka(number)); // seratus dua belas triliun tiga ratus dua puluh tiga miliar empat
// ratus dua puluh tiga juta empat ratus empat puluh dua ribu tiga ratus dua puluh dua

print(Terbilang.angka(5000, prefix: "Terbilang :", suffix: "rupiah")); // Terbilang : lima ribu rupiah

print(Terbilang.angka(145, language: "en"));
```

### Further Updates

- Can read commas
