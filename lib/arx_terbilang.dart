library arx_terbilang;

class Terbilang {
  static final List<String> _dicTerbilang = [
    "",
    "satu",
    "dua",
    "tiga",
    "empat",
    "lima",
    "enam",
    "tujuh",
    "delapan",
    "sembilan",
    "sepuluh",
    "sebelas"
  ];

  static String _terbilang(int angka) {
    String temp = "";
    if (angka < 12) {
      temp = " ${_dicTerbilang[angka]}";
    } else if (angka < 20) {
      temp = "${_terbilang(angka - 10)} belas";
    } else if (angka < 100) {
      temp = "${_terbilang(angka ~/ 10)} puluh${_terbilang(angka % 10)}";
    } else if (angka < 200) {
      temp = " seratus${_terbilang(angka - 100)}";
    } else if (angka < 1000) {
      temp = "${_terbilang(angka ~/ 100)} ratus${_terbilang(angka % 100)}";
    } else if (angka < 2000) {
      temp = " seribu${_terbilang(angka - 1000)}";
    } else if (angka < 1000000) {
      temp = "${_terbilang(angka ~/ 1000)} ribu${_terbilang(angka % 1000)}";
    } else if (angka < 1000000000) {
      temp =
          "${_terbilang(angka ~/ 1000000)} juta${_terbilang(angka % 1000000)}";
    } else if (angka < 1000000000000) {
      temp =
          "${_terbilang(angka ~/ 1000000000)} miliar${_terbilang(angka % 1000000000)}";
    } else if (angka < 1000000000000000) {
      temp =
          "${_terbilang(angka ~/ 1000000000000)} triliun${_terbilang(angka % 1000000000000)}";
    } else if (angka < 1000000000000000000) {
      temp =
          "${_terbilang(angka ~/ 1000000000000000)} kuadriliun${_terbilang(angka % 1000000000000000)}";
    }
    return temp;
  }

  static String angka(int number, {String? prefix, String? suffix}) {
    final String temp = _terbilang(number);

    final whitespaceRE = RegExp(r"(?! )\s+| \s+");

    var stringTerbilang = temp.replaceAll(whitespaceRE, " ").trim();

    if (suffix != null) {
      stringTerbilang = "$stringTerbilang $suffix";
    }
    if (prefix != null) {
      stringTerbilang = "$prefix $stringTerbilang";
    }
    return stringTerbilang;
  }
}
