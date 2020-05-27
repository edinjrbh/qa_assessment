class TodoApp  < SitePrism::Page

    element :sign_in_lk, "a[id='sign_in']"
    element :input_email, "input[id='user_email']"
    element :input_password, "input[id='user_password']"
    element :sign_in_bt, "input[value='Sign in']"
    element :sign_out_lk, "a[href='/users/sign_out']"
    
    element :my_task_lk, "a[id='my_task']"
    element :new_task, "input[id='new_task']"
    element :add_bt, "span[class='input-group-addon glyphicon glyphicon-plus']"
    element :remove_task_bt, "button[class='btn btn-xs btn-danger']"

    element :manage_sub_bt, "button[class='btn btn-xs btn-primary ng-binding']"
    element :new_sub_task, "input[id='new_sub_task']"
    element :data_sub_task, "input[id='dueDate']"
    element :add_sub_task,  "button[id='add-subtask']"
    element :remove_sub_task_bt, "button[ng-click='removeSubTask(sub_task)']"
    element :close_bt, "button[ng-click='close()']"
   
end