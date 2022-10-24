<h1 align="center"> Bytebank: Utilizando gerenciamento de estados com Provider ⚡ </h1>

## ℹ️ Descrição

Aplicação **mobile** desenvolvida durante o curso [Flutter: gerenciamento de estados com Provider]([https://cursos.alura.com.br/course/flutter-crie-primeiro-app](https://cursos.alura.com.br/course/flutter-gerenciamento-estados-provider)) de Flutter, na plataforma **[Alura](https://www.alura.com.br/)**, pela instrutora [Juliana Negreiros](https://cursos.alura.com.br/user/juunegreiros).

## ⚡ Flutter Provider

O Provider é um **gerenciador de estados** usado no Flutter, que é responsável por observar um determinado objeto e avisar aos componentes interessados quando houver alguma alteração no mesmo, de forma que eles se atualizem da mudança.

### 🗄️ Single Source of Truth (SSoT)

O Provider utiliza o conceto de Single Source of Truth, ou Fonte Única de Verdade, que é um termo usado para definir o conceito de gestão de conteúdo a partir de uma única fonte ou ferramenta. A ideia de aplicação agora é utilizar uma única fonte de informações, chamada _Store_.

<p align="center">
  <img src="https://media.discordapp.net/attachments/962040838123319319/1034143573744033854/Captura_de_tela_2022-10-24_133700.png" alt= "[Imagem de SSoT. Store provê informações para container, componente filho e componente neto." />
</p>

### ✅ Design Pattern: Singleton

[_Singleton_](https://refactoring.guru/pt-br/design-patterns/singleton) é um _design pattern_ que fornece um único ponto de acesso global para determinada instância de uma classe, garantindo também que só exista uma. O Provider aplica o _Singleton_ para o gerenciamento de estado do projeto, tornando mais limpo e consistente.

### 🔽  Adicionando o Provider ao projeto

Para utilizar o [Provider](https://pub.dev/packages/provider) no Flutter basta instalar o pacote com o seguinte comando:

```bash
flutter pub add provider
```

### ⚙️ Configurando `main.dart` e classes com Provider

Podemos inserir no arquivo `main.dart` um ChangeNotiferProvider, que vai verificar se determinada classe teve alteração ou não, usando como exemplo a classe `Saldo`:

```dart
  ChangeNotifierProvider(
    create: (context) =>  Saldo(0),
    child: const BytebankApp(),
  ),
```

_E se quisermos **usar mais de um Provider**?_ Daí podemos usar o `MultiProvider`, veja o exemplo utilizando as classes `Saldo` e `Transferencias`:

```dart
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Saldo(0),
        ),
        ChangeNotifierProvider(
          create: (context) => Transferencias(),
        ),
      ],
      child: const BytebankApp(),
    ),
```

Nas classes que queremos usar o `Provider` é necessário realizar **duas tarefas**: 

- `1`: estender as classes de `ChangeNotifier`;
- `2`: Usar a instrução `notifyListeners()` quando quisermos notificar que algo foi alterado.

Um exemplo do uso de `notifyListeners()` é na classe `Saldo`, no método `adiciona()`:

```dart
void adiciona(double valor) {
  this.valor += valor;

  notifyListeners();
}
```

### 🪄 Exibindo e alterando os valores

Para **exibir um valor** de uma classe usando Provider, usamos o `Consumer<A>`, veja o exemplo abaixo utilizando `Saldo`:

```dart
Consumer<Saldo>(
  builder: (context, valor, child) {
    return Text(
      valor.toString(),
    );
  },
),
```

Já se quisermos **alterar o valor** de `Saldo` usando o método de adição e adicionando 10, por exemplo, usaríamos a seguinte instrução:

```
Provider.of<Saldo>(context, listen: false).adiciona(10);
```

E para apenas acessar a variável `valor` em `Saldo`:

```
Provider.of<Saldo>(context, listen: false).valor;
```


## ✨ Funcionalidades do projeto

A aplicação possui um _Dashboard_ que possui o valor atual da conta, botões para receber depósito e realizar transferêndias, além das últimas duas transferências realizadas e a opções de ver todas as transferências.

<p align="center">
  <img src="https://github.com/jhoisz/Bytebank_Provider/blob/main/flutterprovider.gif" alt= "Gif colorido da aplicação desenvolvida realizando a operação de transferência e depósito." />
</p>


## 🛠️ Tecnologias usadas

Neste projeto foram usadas as seguintes tecnologias:

> Framework [Flutter](https://flutter.dev/)

> Linguagem [Dart](https://dart.dev/)

## ▶️ Como executar

Primeiro você deve [instalar flutter](https://docs.flutter.dev/get-started/install).

Então, você pode clocar e entrar na pasta do projeto:

```bash
git clone https://github.com/jhoisz/Bytebank_Provider
cd Bytebank_Provider
```

Agora, para testar, você precisa instalar as dependências e, em seguida, pode usar um dispositivo conectado ao seu computador ou usar um emulador:

```bash
flutter pub get 
flutter run
```
