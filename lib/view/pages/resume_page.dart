import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:knovator_project/controller/resume_provider.dart';
import 'package:knovator_project/view/pages/resume_view_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResumePage extends ConsumerWidget {
  final ValueNotifier<bool> themeNoitfier;
  const ResumePage({super.key, required this.themeNoitfier});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void changeTheme() async {
      themeNoitfier.value = !themeNoitfier.value;
      (await SharedPreferences.getInstance())
          .setBool('theme', themeNoitfier.value);
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RESUME'),
        actions: [
          IconButton(
              onPressed: changeTheme,
              icon: Icon(
                  themeNoitfier.value ? Icons.light_mode : Icons.dark_mode))
        ],
      ),
      body: ListView.builder(
        itemCount: ref.watch(resumeProvider).length,
        itemBuilder: (context, index) {
          final resume = ref.watch(resumeProvider)[index];
          return ListTile(
            onTap: () => const ViewResumePAge(),
            title: Text(resume.name),
          );
        },
      ),
      bottomNavigationBar: TextButton(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.purple),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
