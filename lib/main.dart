import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knovator_project/view/pages/resume_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final darkTheme = useState(false);

    useEffect(() {
      SharedPreferences.getInstance()
          .then((value) => darkTheme.value = value.getBool('theme') ?? false);

      return null;
    });
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme.value
          ? ThemeData.dark()
          : ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
              useMaterial3: true),
      home:  ResumePage(themeNoitfier: darkTheme),
    );
  }
}
