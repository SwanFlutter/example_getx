import 'dart:math';

import 'package:example_getx/model/task_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  final RxList<TaskModel> tasks = <TaskModel>[].obs;

  late TextEditingController title, description;

  @override
  void onInit() {
    super.onInit();
    title = TextEditingController();
    description = TextEditingController();
  }

  @override
  void dispose() {
    title.dispose();
    description.dispose();
    super.dispose();
  }

  void createTask() {
    tasks.add(TaskModel(title: title.text, description: description.text));
    title.clear();
    description.clear();
    print("tasks.length: ${tasks.length}");
  }

  Color randColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
