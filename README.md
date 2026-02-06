# TimeUP

Um app de tempo extremamente elegante e bonito com animações fluidas e com tema de liquidglass

## 🚀 Começando

Este projeto foi gerado pelo AI App Architect.

### Pré-requisitos

- Flutter 3.19.0 ou superior
- Dart 3.0.0 ou superior
- Android SDK 34
- JDK 17

### Instalação

1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd timeup
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Execute o app:
```bash
flutter run
```

## 📁 Estrutura do Projeto

```
lib/
├── core/           # Código compartilhado
│   ├── di/         # Injeção de dependências
│   ├── routes/     # Configuração de rotas
│   └── theme/      # Temas e estilos
├── features/       # Funcionalidades
│   ├── auth/       # Autenticação
│   ├── home/       # Página inicial
│   └── splash/     # Tela de splash
└── main.dart       # Ponto de entrada
```

## 🔧 Build

### APK de Desenvolvimento
```bash
flutter build apk --flavor dev --debug
```

### APK de Produção
```bash
flutter build apk --flavor prod --release
```

### App Bundle
```bash
flutter build appbundle --flavor prod --release
```

## 🏗️ Flavors

- **dev**: Desenvolvimento local
- **staging**: Ambiente de testes
- **prod**: Produção

## 📝 GitHub Actions

O projeto inclui workflows para:
- Análise de código
- Execução de testes
- Build automático
- Criação de releases

## 📄 Licença

Este projeto está licenciado sob a MIT License.
