# Classes
module Menu

     def menu
       " Welcome to the TodoLister Program!
       This menu will help you use the Task List System
       1) Add
       2) Show
       Q) Quit "
     end

     def show
       menu
     end
   end


   module Promptable
     def prompt(message = "Just the facts, ma'am.", symbol = ':> ')
       print message
       print symbol
       gets.chomp
     end
   end


   class List
     attr_reader :all_tasks

     def initialize
       @all_tasks = []
     end

     def add(task)
       all_tasks << task
     end

     def show
       all_tasks
     end
   end

   class Task
     attr_reader :description

     def initialize(description)
       @description = description
     end

   end


# Actions

   if __FILE__ == $PROGRAM_NAME
     include Menu
     include Promptable
     ml = List.new
     puts 'Please choose from the following list'
     until ['q'].include?(user_input = prompt(show).downcase)
       case user_input
       when '1'
         ml.add(Task.new(prompt('What is the task you would like to accomplish?')))
       when '2'
         puts ml.show
       else
         puts 'Try again, I did not understand.'
       end
     end
     puts 'Outro - Thanks for using our awesome menuing system!'
   end
