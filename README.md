## App Rating Dialog ⭐

A simple, lightweight, and customizable **app rating dialog** for Flutter.  
Easily prompt users to rate your app with a beautiful star-based UI.

---

## ✨ Features

- ⭐ 1–5 star rating dialog
- 🎨 Fully customizable colors
- 📱 Material Design based
- 🧩 Simple API (single function call)
- 🔒 Safe & reusable (public package friendly)
- 🚀 Easy integration

---

## 📸 Preview

> A clean dialog with star rating, title, message, and submit/cancel buttons.

https://github.com/user-attachments/assets/4c752f7c-f92f-4631-b978-efeb6712ae46


---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  app_rating_dialog: ^0.0.1
```
Then run:
```
flutter pub get
```
## 🚀 Usage

Import the package:
```
import 'package:app_rating_dialog/app_rating_dialog.dart';
```
Show the rating dialog:
```
AppRatingDialog.show(
  context,
  title: 'Rate our App',
  message: 'Your feedback helps us improve!',
  onRated: (rating) {
    debugPrint('User rated: $rating');
  },
);
```

## 🎨 Customization
```
AppRatingDialog.show(
  context,
  title: 'Enjoying the app?',
  message: 'Tap a star to rate us!',
  primaryColor: Colors.orange,
  onRated: (rating) {
    print('Rating: $rating');
  },
);
```
## Project structure
```
lib/
 ├── app_rating_dialog.dart        // main export file
 └── src/
     ├── rating_dialog.dart        // UI widget
     ├── rating_star.dart          // star widget
     └── rating_controller.dart    // logic
example/
 └── lib/
     └── main.dart                 // demo app
```
## 📄 License
```
MIT License

Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
