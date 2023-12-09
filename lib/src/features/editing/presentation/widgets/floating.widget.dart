import 'package:flutter/material.dart';

addNewDialog(context, TextEditingController controller) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Add New Text',
      ),
      content: TextField(
        controller: controller,
        maxLines: 5,
        decoration: const InputDecoration(
          suffixIcon: Icon(
            Icons.edit,
          ),
          filled: true,
          hintText: 'Your Text Here',
        ),
      ),
    ),
  );
}
