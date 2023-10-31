import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../editing/presentation/pages/editing.page.dart';

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
          if (file != null) {
            //GoRouter.of(GlobalKeysConfig.navBar.currentContext!)
            // context.goNamed(EditingPage.route, queryParameters: {
            //   'selectedImage': file.path,
            // });
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => EditingPage(selectedImage: file.path)),
            );
          }
        },
        icon: const Icon(Icons.upload_file_outlined),
      ),
    );
  }
}
