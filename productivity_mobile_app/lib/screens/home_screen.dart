import 'package:flutter/material.dart';
import '../widgets/progress_indicator.dart';
import '../widgets/task_tile.dart';
import '../models/task.dart';

class HomeScreen extends StatelessWidget {
  final List<Task> featuredTasks = [
    // Exemplo de tarefas em destaque
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
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                CustomProgressIndicator(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: featuredTasks.length,
              itemBuilder: (context, index) {
                return TaskTile(task: featuredTasks[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // Configurações adicionais para o BottomNavigationBar
      ),
    );
  }
}
