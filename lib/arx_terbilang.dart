library arx_terbilang;

class Terbilang {
  static final Map<String, dynamic> _dictionary = {
    "0": "nol",
    "1": "satu",
    "2": "dua",
    "3": "tiga",
    "4": "empat",
    "5": "lima",
    "6": "enam",
    "7": "tujuh",
    "8": "delapan",
    "9": "sembilan",
    "10": "sepuluh",
    "11": "sebelas",
    "teen": "belas",
    "ty": "puluh",
    "a hundred": "seratus",
    "hundred": "ratus",
    "a thousand": "seribu",
    "thousand": "ribu",
    "million": "juta",
    "billion": "miliar",
    "trillion": "triliun",
    "quadrillion": "kuadriliun"
  };

  static final Map<String, dynamic> _dictionaryEn = {
    "0": "zero",
    "1": "one",
    "2": "two",
    "3": "three",
    "4": "four",
    "5": "five",
    "6": "six",
    "7": "seven",
    "8": "eight",
    "9": "nine",
    "10": "ten",
    "11": "eleven",
    "12": "twelve",
    "13": "thirteen",
    "14": "fourteen",
    "15": "fifteen",
    "16": "sixteen",
    "17": "seventeen",
    "18": "eighteen",
    "19": "nineteen",
    "20": "twenty",
    "30": "thirty",
    "40": "fourty",
    "50": "fifty",
    "60": "sixty",
    "70": "seventy",
    "80": "eighty",
    "90": "ninety",
    "ty": "ty",
    "a hundred": "one hundred",
    "hundred": "hundred",
    "a thousand": "one thousand",
    "thousand": "thousand",
    "million": "million",
    "billion": "billion",
    "trillion": "trillion",
    "quadrillion": "quadrillion"
  };

  static String _wordToNumber(num number) {
    String temp = "";
    if (number < 12) {
      temp = _dictionary["$number"];
    } else if (number < 20) {
      temp = "${_wordToNumber(number - 10)} ${_dictionary['teen']}";
    } else if (number < 100) {
      String kataBelakang =
          number % 10 > 0 ? " ${_wordToNumber(number % 10)}" : "";
      temp = "${_wordToNumber(number ~/ 10)} ${_dictionary['ty']}$kataBelakang";
    } else if (number < 200) {
      String kataBelakang =
          number - 100 > 0 ? " ${_wordToNumber(number - 100)}" : "";
      temp = "${_dictionary['a hundred']}$kataBelakang";
    } else if (number < 1000) {
      String kataBelakang =
          number % 100 > 0 ? " ${_wordToNumber(number % 100)}" : "";
      temp =
          "${_wordToNumber(number ~/ 100)} ${_dictionary['hundred']}$kataBelakang";
    } else if (number < 2000) {
      String kataBelakang =
          number - 1000 > 0 ? " ${_wordToNumber(number - 1000)}" : "";
      temp = "${_dictionary['a thousand']}$kataBelakang";
    } else if (number < 1000000) {
      String kataBelakang =
          number % 1000 > 0 ? " ${_wordToNumber(number % 1000)}" : "";
      temp =
          "${_wordToNumber(number ~/ 1000)} ${_dictionary['thousand']}$kataBelakang";
    } else if (number < 1000000000) {
      String kataBelakang =
          number % 1000000 > 0 ? " ${_wordToNumber(number % 1000000)}" : "";
      temp =
          "${_wordToNumber(number ~/ 1000000)} ${_dictionary['million']}$kataBelakang";
    } else if (number < 1000000000000) {
      String kataBelakang = number % 1000000000 > 0
          ? " ${_wordToNumber(number % 1000000000)}"
          : "";
      temp =
          "${_wordToNumber(number ~/ 1000000000)} ${_dictionary['billion']}$kataBelakang";
    } else if (number < 1000000000000000) {
      String kataBelakang = number % 1000000000000 > 0
          ? " ${_wordToNumber(number % 1000000000000)}"
          : "";
      temp =
          "${_wordToNumber(number ~/ 1000000000000)} ${_dictionary['trillion']}$kataBelakang";
    } else if (number < 1000000000000000000) {
      String kataBelakang = number % 1000000000000000 > 0
          ? " ${_wordToNumber(number % 1000000000000000)}"
          : "";
      temp =
          "${_wordToNumber(number ~/ 1000000000000000)} ${_dictionary['quadrillion']}$kataBelakang";
    }
    return temp;
  }

  static String _wordToNumberEn(num number) {
    String temp = "";
    if (number < 20) {
      temp = _dictionaryEn["$number"];
    } else if (number < 30) {
      String kataBelakang =
          number - 20 > 0 ? " ${_wordToNumberEn(number - 20)}" : "";
      temp = "${_dictionaryEn["20"]}$kataBelakang";
    } else if (number < 40) {
      String kataBelakang =
          number - 30 > 0 ? " ${_wordToNumberEn(number - 30)}" : "";
      temp = "${_dictionaryEn["30"]}$kataBelakang";
    } else if (number < 50) {
      String kataBelakang =
          number - 40 > 0 ? " ${_wordToNumberEn(number - 40)}" : "";
      temp = "${_dictionaryEn["40"]}$kataBelakang";
    } else if (number < 60) {
      String kataBelakang =
          number - 50 > 0 ? " ${_wordToNumberEn(number - 50)}" : "";
      temp = "${_dictionaryEn["50"]}$kataBelakang";
    } else if (number < 70) {
      String kataBelakang =
          number - 60 > 0 ? " ${_wordToNumberEn(number - 60)}" : "";
      temp = "${_dictionaryEn["60"]}$kataBelakang";
    } else if (number < 80) {
      String kataBelakang =
          number - 70 > 0 ? " ${_wordToNumberEn(number - 70)}" : "";
      temp = "${_dictionaryEn["70"]}$kataBelakang";
    } else if (number < 90) {
      String kataBelakang =
          number - 80 > 0 ? " ${_wordToNumberEn(number - 80)}" : "";
      temp = "${_dictionaryEn["80"]}$kataBelakang";
    }
    // else if (number < 20) {
    //   temp = "${_wordToNumberEn(number - 10)}${_dictionaryEn['teen']}";
    // }
    else if (number < 100) {
      String kataBelakang =
          number - 90 > 0 ? " ${_wordToNumberEn(number - 90)}" : "";
      temp = "${_dictionaryEn["90"]}$kataBelakang";
      // String kataBelakang =
      //     number % 10 > 0 ? " ${_wordToNumberEn(number % 10)}" : "";
      // temp =
      //     "${_wordToNumberEn(number ~/ 10)} ${_dictionaryEn['ty']}$kataBelakang";
    } else if (number < 200) {
      String kataBelakang =
          number - 100 > 0 ? " ${_wordToNumberEn(number - 100)}" : "";
      temp = "${_dictionaryEn['a hundred']}$kataBelakang";
    } else if (number < 1000) {
      String kataBelakang =
          number % 100 > 0 ? " ${_wordToNumberEn(number % 100)}" : "";
      temp =
          "${_wordToNumberEn(number ~/ 100)} ${_dictionaryEn['hundred']}$kataBelakang";
    } else if (number < 2000) {
      String kataBelakang =
          number - 1000 > 0 ? " ${_wordToNumberEn(number - 1000)}" : "";
      temp = "${_dictionaryEn['a thousand']}$kataBelakang";
    } else if (number < 1000000) {
      String kataBelakang =
          number % 1000 > 0 ? " ${_wordToNumberEn(number % 1000)}" : "";
      temp =
          "${_wordToNumberEn(number ~/ 1000)} ${_dictionaryEn['thousand']}$kataBelakang";
    } else if (number < 1000000000) {
      String kataBelakang =
          number % 1000000 > 0 ? " ${_wordToNumberEn(number % 1000000)}" : "";
      temp =
          "${_wordToNumberEn(number ~/ 1000000)} ${_dictionaryEn['million']}$kataBelakang";
    } else if (number < 1000000000000) {
      String kataBelakang = number % 1000000000 > 0
          ? " ${_wordToNumberEn(number % 1000000000)}"
          : "";
      temp =
          "${_wordToNumberEn(number ~/ 1000000000)} ${_dictionaryEn['billion']}$kataBelakang";
    } else if (number < 1000000000000000) {
      String kataBelakang = number % 1000000000000 > 0
          ? " ${_wordToNumberEn(number % 1000000000000)}"
          : "";
      temp =
          "${_wordToNumberEn(number ~/ 1000000000000)} ${_dictionaryEn['trillion']}$kataBelakang";
    } else if (number < 1000000000000000000) {
      String kataBelakang = number % 1000000000000000 > 0
          ? " ${_wordToNumberEn(number % 1000000000000000)}"
          : "";
      temp =
          "${_wordToNumberEn(number ~/ 1000000000000000)} ${_dictionaryEn['quadrillion']}$kataBelakang";
    }
    return temp;
  }

  static String angka(num number,
      {String language = 'id', String prefix = '', String suffix = ''}) {
    String result = '';

    if (language == 'id') {
      result = _wordToNumber(number);
    } else if (language == 'en') {
      result = _wordToNumberEn(number);
    } else {
      throw Exception("Language not supported");
    }

    if (prefix.isNotEmpty) {
      result = "$prefix $result";
    }
    if (suffix.isNotEmpty) {
      result = "$result $suffix";
    }
    return result;
  }
}

// class Terbilang {
//   static final List<String> _dicTerbilang = [
//     "",
//     "satu",
//     "dua",
//     "tiga",
//     "empat",
//     "lima",
//     "enam",
//     "tujuh",
//     "delapan",
//     "sembilan",
//     "sepuluh",
//     "sebelas"
//   ];

//   static String _terbilang(int angka) {
//     String temp = "";
//     if (angka < 12) {
//       temp = " ${_dicTerbilang[angka]}";
//     } else if (angka < 20) {
//       temp = "${_terbilang(angka - 10)} belas";
//     } else if (angka < 100) {
//       temp = "${_terbilang(angka ~/ 10)} puluh${_terbilang(angka % 10)}";
//     } else if (angka < 200) {
//       temp = " seratus${_terbilang(angka - 100)}";
//     } else if (angka < 1000) {
//       temp = "${_terbilang(angka ~/ 100)} ratus${_terbilang(angka % 100)}";
//     } else if (angka < 2000) {
//       temp = " seribu${_terbilang(angka - 1000)}";
//     } else if (angka < 1000000) {
//       temp = "${_terbilang(angka ~/ 1000)} ribu${_terbilang(angka % 1000)}";
//     } else if (angka < 1000000000) {
//       temp =
//           "${_terbilang(angka ~/ 1000000)} juta${_terbilang(angka % 1000000)}";
//     } else if (angka < 1000000000000) {
//       temp =
//           "${_terbilang(angka ~/ 1000000000)} miliar${_terbilang(angka % 1000000000)}";
//     } else if (angka < 1000000000000000) {
//       temp =
//           "${_terbilang(angka ~/ 1000000000000)} triliun${_terbilang(angka % 1000000000000)}";
//     } else if (angka < 1000000000000000000) {
//       temp =
//           "${_terbilang(angka ~/ 1000000000000000)} kuadriliun${_terbilang(angka % 1000000000000000)}";
//     }
//     return temp;
//   }

//   static String angka(int number, {String? prefix, String? suffix}) {
//     final String temp = _terbilang(number);

//     final whitespaceRE = RegExp(r"(?! )\s+| \s+");

//     var stringTerbilang = temp.replaceAll(whitespaceRE, " ").trim();

//     if (suffix != null) {
//       stringTerbilang = "$stringTerbilang $suffix";
//     }
//     if (prefix != null) {
//       stringTerbilang = "$prefix $stringTerbilang";
//     }
//     return stringTerbilang;
//   }
// }
