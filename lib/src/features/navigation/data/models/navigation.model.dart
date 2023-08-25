import 'package:flutter/material.dart';

class NavModel {
  final IconData icon;
  final String label;
  final String route;
  final bool isSelected;

  NavModel({
    required this.icon,
    required this.label,
    required this.route,
    required this.isSelected
  });

  NavModel copyWith({
      IconData? icon,
      String? label,
      String? route,
      bool? isSelected
    }) {
      return NavModel(
        icon: icon ?? this.icon, 
        label: label ?? this.label, 
        route: route ?? this.route,
        isSelected: isSelected ?? this.isSelected 
    );
  }
}