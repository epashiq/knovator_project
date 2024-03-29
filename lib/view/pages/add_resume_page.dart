import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knovator_project/controller/resume_provider.dart';
import 'package:knovator_project/model/resume_content_model.dart';
import 'package:knovator_project/model/resume_model.dart';
import 'package:knovator_project/view/widgets/resume_form_widget.dart';

/// Model class to handle the text editing controller
final class TextEditingControllers {
  final TextEditingController titleController;
  final TextEditingController contentController;

  TextEditingControllers({
    required this.contentController,
    required this.titleController,
  });
}

class AddResumePage extends HookConsumerWidget {
  /// The index of the resume to edit
  final int? index;

  const AddResumePage({
    super.key,
    this.index,
  });

  /// Swap items in a list
  List<T> swapListItems<T>(int indexA, int indexB, List<T> originalArray) {
    final temp = originalArray[indexA];
    originalArray[indexA] = originalArray[indexB];
    originalArray[indexB] = temp;
    return originalArray;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Indicate if the user clicked on the edit button or not
    final isEdit = index != null;

    /// State that store the sections of the resume
    final sectionsList = useState<List<TextEditingControllers>>([
      TextEditingControllers(
        contentController: TextEditingController(),
        titleController: TextEditingController(),
      )
    ]);

    /// Dispose all controllers when the user leave the page
    useEffect(
      () => () {
        for (final controllers in sectionsList.value) {
          controllers.contentController.dispose();
          controllers.titleController.dispose();
        }
      },
      [],
    );

    /// Save the resume
    void saveResume(String title) {
      final sections = [
        for (final sectionsData in sectionsList.value)
          ResumeContent(
            title: sectionsData.titleController.text,
            content: sectionsData.contentController.text,
          ),
      ];

      if (isEdit) {
        ref.read(resumeProvider.notifier).editResume(
              ResumeModel(content: sections, name: title),
              index!,
            );
      } else {
        ref.read(resumeProvider.notifier).addResume(
              ResumeModel(content: sections, name: title),
            );
      }

      Navigator.popUntil(context, (route) => route.isFirst);
    }

    /// Show the alert to input the title for the resume
    void showAlertDialog() {
      final titleController = TextEditingController();

      if (isEdit) {
        final resume = ref.read(resumeProvider)[index!];
        titleController.text = resume.name;
      }

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Save Resume'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Please enter a title to save the resume'),
              TextField(
                decoration: const InputDecoration(hintText: 'Title'),
                controller: titleController,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final title = titleController.text;
                
                saveResume(title);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                titleController.dispose();
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            )
          ],
        ),
      );
    }

    /// Add a new section to the resume
    void addNewSection() {
      sectionsList.value = [
        ...sectionsList.value,
        TextEditingControllers(
          contentController: TextEditingController(),
          titleController: TextEditingController(),
        )
      ];
    }

    /// Remove a section from the resume with the given index
    void removeSection(int index) {
      sectionsList.value[index].contentController.dispose();
      sectionsList.value[index].titleController.dispose();

      sectionsList.value = [
        ...sectionsList.value,
      ]..removeAt(index);
    }

    /// Move the section above
    void moveSectionUp(int index) {
      if (index == 0) {
        /// Section is already on top
        return;
      }

      /// Swap the items in the list
      sectionsList.value = swapListItems<TextEditingControllers>(
          index, index - 1, [...sectionsList.value]);
    }

    /// Move the section down
    void moveSectionDown(int index) {
      if (index == sectionsList.value.length - 1) {
        /// Section is already at the bottom of the list
        return;
      }

      /// Swap the items in the list
      sectionsList.value = swapListItems<TextEditingControllers>(
          index, index + 1, [...sectionsList.value]);
    }

    /// Fill the already existing sections to the state
    useEffect(() {
      if (isEdit) {
        final resume = ref.read(resumeProvider)[index!];
        final initialSections = <TextEditingControllers>[];

        for (final section in resume.content) {
          initialSections.add(TextEditingControllers(
              contentController: TextEditingController()
                ..text = section.content,
              titleController: TextEditingController()..text = section.title));
        }
        Future.delayed(
            Duration.zero, () => sectionsList.value = initialSections);
      }

      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Resume' : 'Add Resume'),
        actions: [
          IconButton(
            onPressed: () => showAlertDialog(),
            icon: const Icon(
              Icons.done,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: 48,
        ),
        child: ListView.separated(
          clipBehavior: Clip.none,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final controllers = sectionsList.value[index];

            return ResumeFormWidget(
              contentController: controllers.contentController,
              titleController: controllers.titleController,
              deletePressed: () => removeSection(index),
              upPressed: () => moveSectionUp(index),
              downPressed: () => moveSectionDown(index),
            );
          },
          itemCount: sectionsList.value.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addNewSection(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
