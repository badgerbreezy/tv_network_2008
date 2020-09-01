class Show
  attr_reader :name, :creator, :characters, :actors
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @actors = show_actors
  end

  def total_salary
    combined_salary = @characters.map do |character|
      character.salary
    end
    combined_salary.sum
  end

  def highest_paid_actor
    highest_paid = @characters.sort_by do |character|
      character.salary
    end
    highest_paid.reverse[0].actor
  end

  def show_actors
    actor_list = []
    @characters.each do |character|
      actor_list << character.actor
    end
    actor_list
  end
end
