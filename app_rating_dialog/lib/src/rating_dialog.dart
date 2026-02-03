import 'package:flutter/material.dart';
import 'rating_star.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final String message;
  final Color primaryColor;
  final Function(int rating) onSubmit;

  const RatingDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onSubmit,
    this.primaryColor = Colors.amber,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AlertDialog(
        title: Text(widget.title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.message),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                    (index) => RatingStar(
                  index: index + 1,
                  rating: _rating,
                  activeColor: widget.primaryColor,
                  inactiveColor: Colors.grey,
                  onTap: () {
                    setState(() => _rating = index + 1);
                  },
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: _rating == 0
                ? null
                : () {
              widget.onSubmit(_rating);
              Navigator.pop(context);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

}
