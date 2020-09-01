class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_char = shows.map do |show|
      show.characters
    end
    main_char.flatten
  end

  def actors_by_show
    actors_shows = {}
    actors = shows.map do |show|
      show.actors
    end
    actors_shows[@shows] = Show.new(@actors)
  end
end
