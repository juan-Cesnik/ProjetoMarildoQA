import '../utils/task_validations.dart';

class TaskItem {
  final String title;
  final bool done;

  TaskItem(this.title, {this.done = false});
}

class TaskStore {
  final List<TaskItem> tasks = [];

  Future<void> save(TaskItem task) async {
    tasks.add(task);
  }

  Future<List<TaskItem>> getAll() async {
    return List.unmodifiable(tasks);
  }
}

class TaskService {
  final TaskStore store;

  TaskService(this.store);

  Future<void> create(String title) async {
    if (!tituloValido(title)) {
      throw ArgumentError('Título inválido');
    }

    await store.save(TaskItem(title));
  }

  Future<List<TaskItem>> list() async {
    return store.getAll();
  }
}
