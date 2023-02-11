import 'package:shared_preferences/shared_preferences.dart';

String arabicFont = "quran";
double arabicFontSize = 28;
double moushafFontSize = 40;

Uri quranAppUrl = Uri.parse('http://google.com');

Future saveSetting() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('arabicFontSize', arabicFontSize.toInt());
  await prefs.setInt('moushafFontSize', moushafFontSize.toInt());
}

Future getSetting() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    arabicFontSize = prefs.getInt('arabicFontSize')!.toDouble();
    moushafFontSize = prefs.getInt('moushafFontSize')!.toDouble();
  } catch (e) {
    arabicFontSize = 28;
    moushafFontSize = 40;
  }
}
