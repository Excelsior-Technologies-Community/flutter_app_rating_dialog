import 'package:flutter/material.dart';
import 'app_rating_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Rating Dialog'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Rate App'),
          onPressed: () {
            AppRatingDialog.show(
              context, // ✅ correct context
              title: 'Rate our App',
              message: 'Your feedback helps us improve!',
              onRated: (rating) {
                debugPrint('User rated: $rating');
              },
            );
          },
        ),
      ),
    );
  }
}
