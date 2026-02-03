import 'package:flutter/material.dart';
import 'rating_dialog.dart';

class AppRatingDialog {
  static Future<void> show(
      BuildContext context, {
        required String title,
        required String message,
        required Function(int rating) onRated,
        Color primaryColor = Colors.amber,
      }) {
    assert(
    MaterialLocalizations.of(context) != null,
    'MaterialApp is required to show AppRatingDialog',
    );

    return showDialog(
      context: context,
      builder: (_) => RatingDialog(
        title: title,
        message: message,
        primaryColor: primaryColor,
        onSubmit: onRated,
      ),
    );
  }

}
