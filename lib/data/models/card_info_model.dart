import 'package:flutter/material.dart';

class CardInfoModel {

  final String value;
  final String label;
  final IconData icon;
  const CardInfoModel({
    required this.value,
    required this.label,
    required this.icon,
  });

  static const List<CardInfoModel> cardInfoList = [
    CardInfoModel(
      value: '4.8',
      label: '128 reviews',
      icon: Icons.star_rate_rounded,
    ),
    CardInfoModel(value: '20', label: 'MNS', icon: Icons.schedule_rounded),
    CardInfoModel(
      value: '350',
      label: 'KCAL',
      icon: Icons.local_fire_department_rounded,
    ),
  ];
}