class Cell

  attr_accessor :x, :y
  attr_reader :state

  def initialize (x, y, state)
    @x = x
    @y = y
    @state = @new_state = state
  end

  def alive?
    @state == true
  end

  def dead?
    @state == false
  end

  def update
    @state = @new_state
  end

  def update_state(value)
    @new_state = value
  end

end
