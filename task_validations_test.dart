import 'package:flutter_test/flutter_test.dart';
import '../lib/utils/task_validations.dart';

void main() {
  test('TU01 - Deve tratar erro de login', () {
    expect(
      mensagemErroLogin('wrong-password'),
      'Senha incorreta',
    );
  });

  test('TU02 - Deve rejeitar título vazio', () {
    expect(tituloValido(''), false);
  });

  test('TU03 - Deve alternar status da tarefa', () {
    expect(alternarStatus(false), true);
    expect(alternarStatus(true), false);
  });
}
