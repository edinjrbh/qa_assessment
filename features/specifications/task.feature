#language: pt

Funcionalidade: Criar Tarefas
	Sendo um usuário logado do ToDo APP
	Posso Criar Novas Tasks
	E visualizar a lista de Tasks existentes

@login @novaTask
Cenário: Criar Nova Task
	Dado que esteja logado no ToDo App
	Quando aciono o link My Tasks
	E preencho o campo de Nova task
	E aciono o botão +
	Então o sistema exibe a Nova Task na lista de tarefas criadas 

@login @removeTask
Cenário: Remover Task
	Dado que esteja logado no ToDo App
	Quando aciono o link My Tasks
	E aciono na lista de Tasks o botão remover
	Então o sistema apaga a task e suas subtasks
