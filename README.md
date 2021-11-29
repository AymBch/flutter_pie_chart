<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A Flutter package for cool design and animation of Pie Chart.

## Features

![Screenshot 2021-11-29 120133](https://user-images.githubusercontent.com/75254562/143841189-a2715ac4-3156-47a4-b0c1-1e0f09e573fb.png)
![Screenshot 2021-11-29 120200](https://user-images.githubusercontent.com/75254562/143841192-2190eb8a-e363-4510-aee8-471babcc4c56.png)
![Screenshot 2021-11-29 120101](https://user-images.githubusercontent.com/75254562/143841195-0c4e886d-5f22-4003-b4c4-26e7b809f2c9.png)


https://user-images.githubusercontent.com/75254562/143841160-91717ca9-95b6-4f0e-8de4-4b796ca6c62c.mp4


## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

Pie class exapmle:
```dart
final List<Pie> pies = [
    Pie(color: const Color(0xFFFF6262), proportion: 8),
    Pie(color: const Color(0xFFFF9494), proportion: 3),
    Pie(color: const Color(0xFFFFDCDC), proportion: 8),
  ];

```
Flutter pie widget example.
The selected pie must be in the range of the pies list.
```dart
    FlutterPieChart(
      pies: pies,
      selected: 2,
    ),
```

