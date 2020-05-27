require_relative '../pageObjects/TodoApp.rb'
todoApp = TodoApp.new

Dado("que esteja logado no ToDo App") do
	page.assert_text('Welcome,')
end
  
Quando("aciono o link My Tasks") do
	todoApp.my_task_lk.click
end

Quando("preencho o campo de Nova task") do
	todoApp.new_task.set("Nova Task")
end

Quando("aciono o botão +") do
	todoApp.add_bt.click
	puts('cliquei em add')
end

Então("o sistema exibe a Nova Task na lista de tarefas criadas") do
	page.assert_text('Nova Task')
end

Quando("aciono na lista de Tasks o botão remover") do
	todoApp.remove_task_bt.click
end

Então("o sistema apaga a task e suas subtasks") do
    page.assert_no_selector(:button, 'Remove')
end