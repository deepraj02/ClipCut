// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

import 'package:flutter/material.dart';

import '../../data/repository/iedit_image.dart';

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

class _EditingPageState extends IEditImageRepository {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.file(
          File(
            widget.selectedImage,
          ),
        ),
      ),
      
    );
  }
}
