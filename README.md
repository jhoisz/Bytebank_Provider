<h1 align="center"> :moneybag: bytebank  </h1>

## ℹ️ Descrição

Aplicação **mobile** desenvolvida durante o curso [Criando um App](https://cursos.alura.com.br/course/flutter-crie-primeiro-app) de Flutter, na plataforma **[Alura](https://www.alura.com.br/)**, pelo instrutor [Alex Felipe](https://cursos.alura.com.br/user/alexfelipe).

<!-- ## :ledger: Aprendizados  -->
<!-- Apesar de ser uma aplicação simples, durante seu desenvolvimento foram exercitados diversos aprendizados, os quais estão listados abaixo:

- O que é Flutter
- Preparação de Ambiente
- Criação de projeto
- O que são e como funcionam Widgets
- Material Design
- Atalhos e dicas de programação
- Refatoração de código
- StatefulWidget e StatelessWidget
- Como criar um código mais otimizado
- Criação de formulário
- Navegação entre páginas com Navigator
- Passar informações durante navegação
- Lidar com operações assíncronas
- Implementação de ListView
- Organização da estrutura do projeto -->

## Provider

### 🗄️ Single Source of Truth (SSoT)

Single Source of Truth ou Fonte Única de Verdade é um termo usado para definir o conceito de gestão de conteúdo a partir de uma única fonte ou ferramenta. A ideia de aplicação agora é utilizar uma única fonte de informações, chamada _Store_.

<p align="center">
  <img src="https://media.discordapp.net/attachments/962040838123319319/1034143573744033854/Captura_de_tela_2022-10-24_133700.png" alt= "[Imagem de SSoT. Store provê informações para container, componente filho e componente neto." />
</p>

### ✅ Singleton

[_Singleton_](https://refactoring.guru/pt-br/design-patterns/singleton) é um _design pattern_ que fornece um único ponto de acesso global para determinada instância de uma classe, garantindo também que só exista uma. O Provider aplica o _Singleton_ para o gerenciamento de estado do projeto, tornando mais limpo e consistente.

## :sparkles: Funcionalidades do projeto

A aplicação se trata de duas telas, uma possui uma lista de transferências e outra possui um formulário para realizar transferências. O usuário pode preencher o número da conta e o valor a ser transferido, então ao clicar em "salvar", a aplicação irá adicionar a uma lista de transferências.

<p align="center">
  <img src="https://github.com/jhoisz/Bytebank-Alura/blob/main/app.gif" alt= "Gif colorido da aplicação desenvolvida realizando a operação de transferência." />
</p>

## :hammer: Tecnologias usadas

Neste projeto foram usadas as seguintes tecnologias:

> Framework [Flutter](https://flutter.dev/)

> Linguagem [Dart](https://dart.dev/)

## :arrow_forward: Como executar

Primeiro você deve [instalar flutter](https://docs.flutter.dev/get-started/install).

Então, você pode clocar e entrar na pasta do projeto:

```bash
git clone https://github.com/jhoisz/Bytebank-Alura.git
cd Bitebank-Alura
```

Agora, para testar, você pode usar um dispositivo conectado ao seu computador ou usar um emulador:

```bash
flutter run
```
