import 'package:flutter_test/flutter_test.dart';
import 'package:task_app_qa/utils/task_validations.dart';

void main() {
  group('Testes unitários - validações e login', () {
    test('TU01 - Deve tratar erro de login com senha incorreta', () {
      expect(mensagemErroLogin('wrong-password'), 'Senha incorreta');
    });

    test('TU02 - Deve rejeitar título vazio', () {
      expect(tituloValido(''), isFalse);
    });

    test('TU03 - Deve alternar status da tarefa', () {
      expect(alternarStatus(false), isTrue);
      expect(alternarStatus(true), isFalse);
    });
  });
}
