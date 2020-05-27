require_relative '../pageObjects/TodoApp.rb'
todoApp = TodoApp.new

Quando("aciono o botão Manage SubTasks") do
	todoApp.manage_sub_bt.click
end
  
E("preencho os dados <titulo> e <data> de uma Nova Subtask") do
    todoApp.new_sub_task.set('Nova Subtask')
    todoApp.data_sub_task.set('12/31/2020')
end

E("aciono o botão +Add") do
	todoApp.add_sub_task.click
end

E("o sistema exibe a nova Subtask na lista de Subtasks, da Task selecionada") do
    page.assert_text('Nova Subtask')
end

Quando("aciono o botão Remove Subtask de uma Subtask") do
    todoApp.remove_sub_task_bt.click
end

E("o sistema deleta a Subtask da lista, na Task selecionada") do
    page.assert_no_selector(:button, 'Remove SubTask')
end

Então("aciono o botão Close da pop-up") do
	todoApp.close_bt.click
end