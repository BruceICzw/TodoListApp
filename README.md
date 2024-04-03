# Flutter Todo List App using Hive for Local Storage

This is a simple Flutter todo list application that utilizes Hive for local storage. It allows users to create, view, and delete tasks.

## Features

- Add new tasks to the todo list.
- Mark tasks as completed/uncompleted.
- Delete tasks from the todo list.

## Installation

1. Clone the repository:

   ```
   git clone https://github.com/BruceICzw/TodoListApp
   ```

2. Navigate to the project directory:

   ```
   cd TodoListApp
   ```

3. Install dependencies:

   ```
   flutter pub get
   ```

## Usage

1. Run the application:

   ```
   flutter run
   ```

2. Create a new task by tapping on the floating action button (`+`).
3. Mark tasks as completed by tapping on the checkbox.
4. Delete tasks by sliding them to the right and tapping on the delete button.

## Dependencies

- `hive_flutter`: ^1.1.0
- `flutter_slidable`: ^0.6.0

## Configuration

### Android Manifest

Make sure your AndroidManifest.xml file includes necessary configurations for Flutter:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="your.package_name.here">
    <application
        android:label="todo"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">
        <!-- Add activity configurations here -->
        ...
    </application>
    <!-- Add required queries here -->
    ...
</manifest>
```

### main.dart

Initialize Hive in the `main.dart` file:

```dart
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

void main() async {
    // Initialize Hive
  await Hive.initFlutter();
  // Open the Hive box
  await Hive.openBox('todo');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
```

### homepage.dart

This file contains the main logic and UI for the todo list:

```dart
// Add the necessary imports here
...
```

## Contributing

Contributions are welcome! Feel free to submit bug reports, feature requests, or pull requests to help improve this application.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
