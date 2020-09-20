class Cat
  attr_reader :name

  def initialize
    @name = ["Amigo", "Oscar", "Viking"].sample
  end
end
