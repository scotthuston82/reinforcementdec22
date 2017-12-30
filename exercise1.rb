class Task

  def initialize(description, due_date)
    @description = description
    @due_date    = due_date
  end

  # readers

  def description
    @description
  end

  def due_date
    @due_date
  end

  #writers

  def update_description(description)
    @descrition = description
  end

  def update_due_date(due_date)
    @due_date = due_date
  end

end

class Todo

  @@list = []

  def self.display_list
    @@list
  end

  def self.add_task(description, due_date)
    task = Task.new(description, due_date)
    @@list << task
  end

end

Todo.add_task("do the laundry", "Dec 21 2018")
Todo.add_task("go get the food on the list your wife gave you", "Dec 20 2018")
Todo.add_task("get off your butt and go to the gym", "dec 22 2018")

p Todo.display_list
