import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton.filled(
        onPressed: () async {
          XFile? file = await ImagePicker().pickImage(
            source: ImageSource.gallery,
          );
          if (file != null) {}
        },
        icon: const Icon(Icons.upload_file_outlined),
      ),
    );
  }
}
