# arx_terbilang

arx_terbilang is a package to convert number to words in indonesia or english.

## Limitation

This package can hold up to `999 Million` until further updates.

### Example

```dart
import 'package:arx_terbilang/arx_terbilang.dart';

int number = 1123;
print(Terbilang(language: 'id').createInt(number)); // seribu seratus dua puluh tiga
```

### Further Updates

- Can hold up to kuadriliun
- Can read commas
