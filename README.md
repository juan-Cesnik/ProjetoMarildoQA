# ProjetoMarildoQA

Projeto de apoio à atividade prática de Qualidade de Software, com testes automatizados em Flutter/Dart para regras de negócio relacionadas ao Task App.

## Pré-requisitos

- Flutter instalado e configurado
- Git

## Instalar dependências

```bash
flutter pub get
```

## Executar os testes

```bash
flutter test
```

## Casos de teste

- **TU01:** tratamento de erro de login para senha incorreta.
- **TU02:** rejeição de título vazio.
- **TU03:** alternância do status de uma tarefa.
- **TI01:** cadastro e listagem de tarefas usando armazenamento em memória.

## Integração contínua

O workflow `.github/workflows/flutter-tests.yml` executa `flutter pub get` e `flutter test` em eventos de push e pull request.

## Observação sobre o escopo

O teste TI01 utiliza `TaskStore`, um armazenamento em memória, para testar o serviço de tarefas isoladamente. Ele não comprova integração com Firebase/Cloud Firestore nem testa diretamente a interface do aplicativo original.
