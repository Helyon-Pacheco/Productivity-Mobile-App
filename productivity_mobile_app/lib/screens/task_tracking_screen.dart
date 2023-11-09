import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskTrackingScreen extends StatefulWidget {
  @override
  _TaskTrackingScreenState createState() => _TaskTrackingScreenState();
}

class _TaskTrackingScreenState extends State<TaskTrackingScreen> {
  List<Task> tasks = [
    // Exemplo de tarefas
    Task(
        id: '1',
        title: 'Tarefa Importante 1',
        description: 'Descrição da Tarefa 1',
        isCompleted: false),
    Task(
        id: '2',
        title: 'Tarefa Importante 2',
        description: 'Descrição da Tarefa 2',
        isCompleted: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rastreamento de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            task: tasks[index],
            onChanged: (bool? newValue) {
              setState(() {
                tasks[index].isCompleted = newValue ?? false;
              });
            },
          );
        },
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final Task task;
  final ValueChanged<bool?> onChanged;

  const TaskTile({Key? key, required this.task, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description), // Exibindo a descrição da tarefa
      leading: Checkbox(
        value: task.isCompleted,
        onChanged: onChanged,
      ),
    );
  }
}
