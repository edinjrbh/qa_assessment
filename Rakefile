require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
 
desc 'Executar Cenários'
task :scenarios do
  puts 'Executando os Cenários'
  sh 'cucumber -t @novaTask EMAIL=edisonsdjr@outlook.com PASSWORD=Liteon31'
  sh 'cucumber -t @removeTask EMAIL=edisonsdjr@outlook.com PASSWORD=Liteon31'
  sh 'cucumber -t @novaSubTask EMAIL=edisonsdjr@outlook.com PASSWORD=Liteon31'
  sh 'cucumber -t @removeTask EMAIL=edisonsdjr@outlook.com PASSWORD=Liteon31'
  sh 'cucumber -t @removeSubTask EMAIL=edisonsdjr@outlook.com PASSWORD=Liteon31'
  sh 'cucumber -t @removeTask EMAIL=edisonsdjr@outlook.com PASSWORD=Liteon31'
end