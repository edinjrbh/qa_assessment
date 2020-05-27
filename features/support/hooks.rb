require_relative '../pageObjects/TodoApp.rb'
todoApp = TodoApp.new

Before('@login') do 
    visit 'https://qa-test.avenuecode.com'
	todoApp.sign_in_lk.click
	email = ENV['EMAIL']
	password = ENV['PASSWORD']
    todoApp.input_email.set(email)
	todoApp.input_password.set(password)
	todoApp.sign_in_bt.click
end

Before('@novaSubTask') do 
	todoApp.my_task_lk.click
	todoApp.new_task.set("Nova Task")
	todoApp.add_bt.click
end

Before('@removeSubTask') do 
	todoApp.my_task_lk.click
	todoApp.new_task.set("Nova Task")
	todoApp.add_bt.click
	todoApp.manage_sub_bt.click
	todoApp.new_sub_task.set('Nova Subtask')
    todoApp.data_sub_task.set('12/31/2020')
	todoApp.add_sub_task.click
	todoApp.close_bt.click
end

After do
	todoApp.sign_out_lk.click
end