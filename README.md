## Sebha (السبحة الالكترونية)

A simple, elegant Flutter application that simulates an electronic prayer beads counter (Sebha). Users can choose from various Tasbih phrases, increment counters, track rounds, and reset counts. The app features an onboarding screen, main counter interface, and a customizable bottom sheet for phrase selection.

---

### Table of Contents

* [Features](#features)
* [Screenshots](#screenshots)
* [Project Structure](#project-structure)
* [Getting Started](#getting-started)

  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
  * [Running the App](#running-the-app)
* [Usage](#usage)
* [Customizing Tasbih Phrases](#customizing-tasbih-phrases)
* [Technologies Used](#technologies-used)
* [Contributing](#contributing)
* [License](#license)

---

## Features

* **Onboarding Screen**: Displays a splash image and progress indicator for 5 seconds before navigating to the main view.
* **Tasbih Counter**: Tap the central circle to increment the count (max 33), automatically increments round when count resets.
* **Phrase Navigation**: Navigate through phrases using next/previous arrows.
* **Reset & Select**: Reset count and round, or choose a different Tasbih phrase via a bottom sheet list.
* **Responsive UI**: Built with Material Design and adaptive layouts.

---

## Screenshots

> Add your own screenshots in the `assets/screenshots/` folder and update paths below.

![Onboarding Screen](assets/screenshots/onboarding.png)
![Main Counter](assets/screenshots/main_counter.png)
![Tasbih Selector](assets/screenshots/selector.png)

---

## Project Structure

```
sebha/
├── lib/
│   ├── main.dart         # Entry point
│   ├── views/
│   │   ├── onboarding_view.dart
│   │   └── main_view.dart
│   ├── utils/
│   │   ├── assets/       # Images and icons
│   │   ├── colors/app_colors.dart
│   │   └── constants/app_constants.dart
├── pubspec.yaml          # Dependencies and assets
└── README.md             # This file
```

---

## Getting Started

### Prerequisites

* [Flutter](https://flutter.dev/docs/get-started/install) >= 3.0.0
* Android Studio or VS Code with Flutter plugin

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/sebha.git
   cd sebha
   ```
2. **Install dependencies**:

   ```bash
   flutter pub get
   ```
3. **Add assets**:

   * Place the splash image `sebha.png` under `lib/utils/assets/`
   * Add any screenshots under `assets/screenshots/` and update `pubspec.yaml`.

### Running the App

* **On Android**:

  ```bash
  flutter run
  ```
* **On iOS**:

  ```bash
  flutter run -d ios
  ```

---

## Usage

1. Launch the app to see the onboarding screen for 5 seconds.
2. On the main view, tap the central circle to increment the count.
3. Once you reach 33, the round counter increments and the count resets.
4. Use the left/right arrows to switch Tasbih phrases.
5. Tap the list icon to open the selector and pick a new phrase.
6. Tap the refresh icon to reset both count and round at any time.

---

## Customizing Tasbih Phrases

Open `lib/utils/constants/app_constants.dart` and modify the `tasbih` list:

```dart
class AppConstants {
  static const List<String> tasbih = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    // Add or remove phrases here
  ];
}
```

---

## Technologies Used

* Flutter & Dart
* Material Design

---

## Contributing

Contributions are welcome! Please open issues or pull requests for improvements.

---

## License

Distributed under the GDG Alazhar.
