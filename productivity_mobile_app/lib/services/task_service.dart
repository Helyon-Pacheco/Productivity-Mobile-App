import '../models/task.dart';

class TaskService {
  // Lista de tarefas simulada (em um cenário real, isso poderia vir de um banco de dados ou API)
  List<Task> tasks = [];

  // Adiciona uma nova tarefa
  void addTask(Task task) {
    tasks.add(task);
  }

  // Retorna todas as tarefas
  List<Task> getTasks() {
    return tasks;
  }

  // Atualiza uma tarefa específica
  void updateTask(String taskId, Task updatedTask) {
    final index = tasks.indexWhere((task) => task.id == taskId);
    if (index != -1) {
      tasks[index] = updatedTask;
    }
  }

  // Deleta uma tarefa específica
  void deleteTask(String taskId) {
    tasks.removeWhere((task) => task.id == taskId);
  }
}