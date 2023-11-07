import 'package:flutter/material.dart';

import '../../../../../styles/colors.dart';

Widget get textAddButton => FloatingActionButton(
      onPressed: () {},
      backgroundColor: ClipCutColors.darkTertiary,
      tooltip: 'Add Text',
      child: const Icon(
        Icons.edit,
        color: ClipCutColors.lightPrimary,
      ),
    );
