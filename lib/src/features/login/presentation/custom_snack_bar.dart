import 'package:oyan/src/app/imports.dart';

class CustomSnackBar {
  static SnackBar show({required String title, required int seconds}) {
    return SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      backgroundColor: const Color(0xFF2CB1B9),
      duration: Duration(seconds: seconds),
      content: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w500),
      ),
    );
  }
}
