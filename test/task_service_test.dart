import 'package:flutter_test/flutter_test.dart';
import 'package:task_app_qa/services/task_service.dart';

void main() {
  group('Testes do serviço de tarefas', () {
    test('TI01 - Deve cadastrar e listar tarefas', () async {
      final store = TaskStore();
      final service = TaskService(store);

      await service.create('Estudar para a prova');

      final tarefas = await service.list();

      expect(tarefas, hasLength(1));
      expect(tarefas.first.title, 'Estudar para a prova');
      expect(tarefas.first.done, isFalse);
    });

    test('Deve impedir cadastro de tarefa com título vazio', () async {
      final service = TaskService(TaskStore());

      expect(
        () => service.create('   '),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
