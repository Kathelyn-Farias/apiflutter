// main.dart

Estrutura
----------
- MyApp: Este é o widget raiz do aplicativo. Ele inicializa o MaterialApp e define a rota inicial para a HomeScreen.
- HomeScreen: Este é o widget de tela principal contendo uma barra de navegação inferior e gerenciando a exibição de diferentes telas com base no item selecionado.

Widgets
----------
- UserList: Widget para exibir uma lista de usuários. É usado como uma das telas na navegação inferior.
- UserForm: Widget para registro de usuário. É usado como outra tela na navegação inferior.

Funcionalidade
----------
- Navegação Inferior: A barra de navegação inferior permite que os usuários alternem entre a tela de lista de usuários e a tela de registro de usuários. Ícones e rótulos são fornecidos para cada opção.
- Lógica de Navegação: A variável "_selectedIndex" na classe "_HomeScreenState" rastreia o item atualmente selecionado. O método "_onItemTapped" atualiza essa variável quando um item diferente é selecionado, desencadeando uma atualização da interface do usuário para exibir a tela correspondente.
- Widget do Corpo: O método "_getBodyWidget" determina qual tela exibir com base no índice selecionado. Ele retorna o widget "UserList" ou o widget "UserForm" conforme necessário.

Componente
----------
- BottomNavigationBar: Ele permite que os usuários alternem entre diferentes telas ou seções de um aplicativo com facilidade, geralmente contendo ícones e rótulos para cada item de navegação. Quando um item é selecionado, o conteúdo da tela principal é atualizado para refletir o item selecionado.

Estilo
----------
- Tema: O tema MaterialApp é personalizado com configurações para a barra de aplicativos e densidade visual.
- Cor de Fundo: A cor de fundo do aplicativo e da barra de navegação inferior é personalizada para uma aparência coesa.

Dependências
----------
- "flutter/material.dart": Framework Flutter para construir interfaces de usuário.
- "apiflutter/user_list.dart": Widget para exibir lista de usuários.
- "apiflutter/users_cad.dart": Widget para formulário de registro de usuários.

// user_list.dart

Visão Geral
----------
Este widget Flutter representa uma lista de usuários, onde cada usuário pode ser visualizado em um cartão expansível contendo informações básicas e botões para editar ou excluir o usuário.

Funcionalidade
----------
- Carregamento de Usuários: Os usuários são carregados de forma assíncrona usando a classe "UserService". O carregamento é realizado no início do widget.
- Exibição de Usuários: Os usuários são exibidos em um "ListView.builder", permitindo a rolagem suave da lista, independentemente do número de usuários.
- Edição de Usuários: Um diálogo de edição é exibido ao clicar no botão "Editar" em um usuário. Ele permite a modificação do título, primeiro nome, último nome e URL da imagem do usuário.
- Atualização de Usuários: Os dados do usuário são atualizados no servidor ao confirmar as alterações no diálogo de edição. Apenas os campos permitidos para atualização são enviados.
- Exclusão de Usuários: Ao clicar no botão "Excluir" em um usuário, o usuário é excluído do servidor e a lista de usuários é atualizada.
- Feedback ao Usuário: Snackbar é exibido para informar o usuário sobre o sucesso ou falha nas operações de atualização e exclusão.

Componentes Principais
----------
- futureUsers: Representa o futuro carregamento da lista de usuários.
- userService: Instância da classe "UserService" para interagir com a API de usuários.
- TextEditingController: Controladores de texto para os campos do diálogo de edição.

Componente diferenciado usado
----------
- O widget `Expanded` foi usado para expandir um filho de forma que ele preencha todo o espaço disponível no eixo principal do layout, `Column`. Ele é útil para criar layouts flexíveis e responsivos, permitindo que certos elementos ocupem o espaço disponível de forma dinâmica.

Métodos Principais
----------
- _showEditDialog: Exibe um diálogo de edição para um usuário selecionado.
- _updateUser: Atualiza os dados do usuário no servidor com as alterações feitas no diálogo de edição.
- _deleteUser: Exclui o usuário selecionado do servidor.
- _refreshUserList: Atualiza a lista de usuários após operações de edição ou exclusão.
- _showSnackbar: Exibe um Snackbar com uma mensagem de feedback para o usuário.

Dependências
----------
- "apiflutter/user.dart": Definição da classe "User" representando um usuário.
- "apiflutter/user_service.dart": Classe "UserService" para interagir com a API de usuários.
  
// users_cad.dart

Visão Geral
----------
Este widget Flutter representa um formulário de cadastro de usuário, onde os usuários podem inserir informações como nome, sobrenome e e-mail para criar um novo usuário.

Funcionalidade
----------
- Adição de Usuário: Os dados inseridos no formulário são enviados para o servidor ao clicar no botão "Add User". Um Snackbar é exibido para informar o usuário sobre o sucesso ou falha na operação.
- Validação de Entrada: Os campos de nome, sobrenome e e-mail são obrigatórios. O formulário não permite enviar os dados se algum desses campos estiver vazio.

Componentes Principais
----------
- TextEditingController: Controladores de texto para os campos de entrada do formulário.
- userService: Instância da classe "UserService" para interagir com a API de usuários.

Componente diferenciado usado
----------
- TextButton.icon: Esse elemento permite trazer um label, um ícone e a funcionalidade “onPressed”

Métodos Principais
----------
- _addUser: Envia os dados do formulário para o servidor para criar um novo usuário.
- _refreshUserList: Atualiza a lista de usuários após a adição bem-sucedida de um novo usuário.
- _showSnackbar: Exibe um Snackbar com uma mensagem de feedback para o usuário.

Dependências
----------
- "apiflutter/user.dart": Definição da classe "User" representando um usuário.
- "apiflutter/user_service.dart": Classe "UserService" para interagir com a API de usuários.
