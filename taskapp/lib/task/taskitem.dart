import 'package:flutter/material.dart';
import 'package:taskapp/task/task.dart';

class TaslItem extends StatefulWidget {
  const TaslItem({super.key});

  @override
  State<TaslItem> createState() => _TaslItemState();
}

class _TaslItemState extends State<TaslItem> {
  @override
  Widget build(BuildContext context) {
    return TaskListScreen();
  }
}