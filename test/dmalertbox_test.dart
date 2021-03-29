import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlertBox {
  /// Bu şekilde döküman yorumları oluşturabilirsiniz kullanan kişiler için faydalı olur.
  static Future customAlertBox({
    @required BuildContext context,
    @required Widget displayAlertBox,
  }) {
    assert(context != null, "context is null!!");
    assert(customAlertBox != null, "willDisplayWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                displayAlertBox,
                MaterialButton(
                  color: Colors.white30,
                  child: Text(
                    'close alert',
                    style: GoogleFonts.lato(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
