
#language: pt

Funcionalidade: Criar Sub Tarefas
	Sendo um usuário logado do ToDo APP
	Posso criar Subtasks em uma Tasks existente
	E visualizar a lista de Subtasks

@login @novaSubTask 
Cenário: Criar Nova Sub-task
	Dado que esteja logado no ToDo App
	Quando aciono o link My Tasks
	E aciono o botão Manage SubTasks
	E preencho os dados <titulo> e <data> de uma Nova Subtask
	E aciono o botão +Add
	E o sistema exibe a nova Subtask na lista de Subtasks, da Task selecionada
	Então aciono o botão Close da pop-up

@login @removeSubTask
Cenário: Remover Sub-task
	Dado que esteja logado no ToDo App
	Quando aciono o botão Manage SubTasks
	E aciono o botão Remove Subtask de uma Subtask
	E o sistema deleta a Subtask da lista, na Task selecionada
	Então aciono o botão Close da pop-up



