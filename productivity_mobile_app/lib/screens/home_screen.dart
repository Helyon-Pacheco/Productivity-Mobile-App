import 'package:flutter/material.dart';
import '../widgets/progress_indicator.dart';
import '../widgets/task_tile.dart';
import '../models/task.dart';
import '../models/user.dart'; // Importe a classe User

class HomeScreen extends StatelessWidget {
  final User user; // Adicione um campo para o usuário
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

  // Adicione um construtor para receber o usuário
  HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo, ${user.name}'), // Exiba o nome do usuário
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomProgressIndicator(),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
      ),
    );
  }
}
