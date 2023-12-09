// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../../styles/colors.dart';
import '../widgets/floating.widget.dart';

class EditingPage extends StatefulWidget {
  static const String route = '/edit';
  const EditingPage({
    Key? key,
    required this.selectedImage,
  }) : super(key: key);

  final String selectedImage;

  @override
  State<EditingPage> createState() => _EditingPageState();
}

TextEditingController controller = TextEditingController();

class _EditingPageState extends State<EditingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.file(
            File(
              widget.selectedImage,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addNewDialog(context, controller);
        },
        backgroundColor: ClipCutColors.darkTertiary,
        tooltip: 'Add Text',
        child: const Icon(
          Icons.edit,
          color: ClipCutColors.lightPrimary,
        ),
      ),
    );
  }
}
