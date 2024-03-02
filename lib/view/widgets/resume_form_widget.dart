import 'package:flutter/material.dart';

class ResumeFormWidget extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController contentController;

  final VoidCallback deletePressed;

  final VoidCallback upPressed;

  final VoidCallback downPressed;

  const ResumeFormWidget({
    super.key,
    required this.titleController,
    required this.contentController,
    required this.deletePressed,
    required this.upPressed,
    required this.downPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Theme.of(context).shadowColor.withAlpha(60)),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Title',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.sizeOf(context).width,
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter title here...'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Content',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Colors.black.withOpacity(.30))),
              child: TextField(
                controller: contentController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                    hintText: 'Enter content here...'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: upPressed,
                      icon: const Icon(Icons.arrow_upward)),
                  IconButton(
                      onPressed: downPressed,
                      icon: const Icon(Icons.arrow_downward_outlined)),
                  const Expanded(child: SizedBox()),
                  IconButton(
                    onPressed: deletePressed,
                    icon: const Icon(Icons.delete),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
