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
    return main_char.flatten
  end


end
