import 'package:example_getx/screen/create_task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Obx(
          () => ListView.builder(
            itemCount: taskController.tasks.value.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card.outlined(
                elevation: 5,
                color: taskController.randColor(),
                borderOnForeground: false,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: ListTile(
                  title: Text(taskController.tasks[index].title!),
                  subtitle: Text(taskController.tasks[index].description!),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const CreateTask());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
