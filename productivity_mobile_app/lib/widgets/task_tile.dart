import 'package:flutter/material.dart';
import '../models/task.dart'; // Certifique-se de ter uma classe Task definida

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        task.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
        color: task.isCompleted ? Colors.green : null,
      ),
      title: Text(task.title),
      onTap: () {
        // Implemente a ação ao tocar na tarefa
      },
    );
  }
}
