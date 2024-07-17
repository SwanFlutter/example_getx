import 'package:example_getx/controller/task_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

TaskController taskController = Get.find<TaskController>();

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateTask'),
      ),
      body: SizedBox(
        width: Get.width,

        /// Get.width  بعضی وقتها در اپ برای کانتیر  و اور فلو مشکل ایجاد میکنه باگ داره
        height: Get.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.10),
                child: const Text(
                  "CreateTask",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              TextFormField(
                controller: taskController.title,
                decoration: InputDecoration(
                  labelText: "Title...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.025),
              TextFormField(
                controller: taskController.description,
                decoration: InputDecoration(
                  labelText: "Description...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              MaterialButton(
                onPressed: () {
                  taskController.createTask();
                  Get.back();

                  /// بعضی اوقات این هم باگ داره- زمانی که همراه اسنک بار ت ایکس استفاده میشه باگ داره
                },
                height: Get.height * 0.08,
                color: theme.primaryColor,
                minWidth: Get.width * 0.65,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  "Create",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
