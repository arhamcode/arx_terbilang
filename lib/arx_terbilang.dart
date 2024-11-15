library arx_terbilang;

class Terbilang {
  final String language;

  Terbilang({this.language = 'id'});

  String createInt(int number) {
    if (language == 'id') {
      return _kata(number);
    } else {
      return _kataEn(number);
    }
  }

  String _kataEn(int number) {
    List<String> angka = [
      "",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine",
      "ten",
      "eleven",
    ];
    String temp = "";
    if (number < 12) {
      temp = " ${angka[number]}";
    } else if (number < 20) {
      temp = "${_kataEn(number - 10)}teen";
    } else if (number < 100) {
      temp = "${_kataEn(number ~/ 10)}ty${_kataEn(number % 10)}";
    } else if (number < 200) {
      temp = " one hundred${_kataEn(number - 100)}";
    } else if (number < 1000) {
      temp = "${_kataEn(number ~/ 100)} hundred${_kataEn(number % 100)}";
    } else if (number < 2000) {
      temp = " one thousand${_kataEn(number - 1000)}";
    } else if (number < 1000000) {
      temp = "${_kataEn(number ~/ 1000)} thousand${_kataEn(number % 1000)}";
    } else if (number < 1000000000) {
      temp =
          "${_kataEn(number ~/ 1000000)} million${_kataEn(number % 1000000)}";
    }
    return temp;
  }

  String _kata(int number) {
    List<String> angka = [
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
      "sebelas",
    ];
    String temp = "";
    if (number < 12) {
      temp = " ${angka[number]}";
    } else if (number < 20) {
      temp = "${_kata(number - 10)} belas";
    } else if (number < 100) {
      temp = "${_kata(number ~/ 10)} puluh${_kata(number % 10)}";
    } else if (number < 200) {
      temp = " seratus${_kata(number - 100)}";
    } else if (number < 1000) {
      temp = "${_kata(number ~/ 100)} ratus${_kata(number % 100)}";
    } else if (number < 2000) {
      temp = " seribu${_kata(number - 1000)}";
    } else if (number < 1000000) {
      temp = "${_kata(number ~/ 1000)} ribu${_kata(number % 1000)}";
    } else if (number < 1000000000) {
      temp = "${_kata(number ~/ 1000000)} juta${_kata(number % 1000000)}";
    }
    return temp;
  }
}
