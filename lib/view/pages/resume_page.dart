import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResumePage extends StatelessWidget {
  final ValueNotifier<bool> themeNoitfier;
  const ResumePage({super.key, required this.themeNoitfier});

  @override
  Widget build(BuildContext context) {
    void changeTheme() async {
      themeNoitfier.value = !themeNoitfier.value;
      (await SharedPreferences.getInstance())
          .setBool('theme', themeNoitfier.value);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('RESUME'),
        actions: [
          IconButton(
              onPressed: changeTheme,
              icon: Icon(
                  themeNoitfier.value ? Icons.light_mode : Icons.dark_mode))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: const Icon(Icons.add),
      ),
    );
  }
}
