# Classes
class List

  def initialize
    @all_tasks = []
  end

  attr_reader :all_tasks

  def add(task)
    @all_tasks << task
  end

end

class Task

  def initialize(description)
    @description = description
  end

  attr_reader :description
end



# actions

# Program runner
if __FILE__ == $PROGRAM_NAME
         my_list = List.new
         puts 'You have created a new list'
         my_list.add(Task.new('Make Breakfast'))
         puts 'You have added a task to the Todo List'
       end
