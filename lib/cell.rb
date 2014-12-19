class Cell

	def initialize
    @content = :water
	end

  def has_water?
    @content == :water
  end

	def has_ship?
    @content == :ship
  end

  def hit!
    if @content == 'x'
      raise 'Cell is hit more than once' 
    else
      @content = 'x'
    end
  end

  def hit?
    @content == 'x'
  end

  def content
    @content
  end

  def place!(ship)
    @content = :ship
  end

end
