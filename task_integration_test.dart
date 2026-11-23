import 'package:flutter_test/flutter_test.dart';
import '../lib/services/task_service.dart';

void main() {
  test(
    'TI01 - Deve cadastrar e listar tarefas',
    () async {
      final store = TaskStore();
      final service = TaskService(store);

      await service.create('Estudar para a prova');

      final tarefas = await service.list();

      expect(tarefas.length, 1);
      expect(
        tarefas.first.title,
        'Estudar para a prova',
      );
      expect(tarefas.first.done, false);
    },
  );
}
