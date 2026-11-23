# Task App - Gerenciador de Tarefas

Aplicativo desenvolvido em Flutter e Firebase.

## Tecnologias
- Dart
- Flutter
- Firebase Authentication
- Cloud Firestore
- Flutter Test
- GitHub Actions

## Executar o projeto

```bash
flutter pub get
flutter run
```

## Executar os testes

```bash
flutter test
```

## Testes implementados

- TU01: Tratamento de erros de login.
- TU02: Validação do título da tarefa.
- TU03: Alternância do estado da tarefa.
- TI01: Cadastro e listagem de tarefas.

## Pipeline

Os testes são executados automaticamente pelo GitHub Actions
a cada push ou pull request.

Arquivo:
.github/workflows/flutter-tests.yml
