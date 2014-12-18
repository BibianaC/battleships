class Cell

	def initialize(content)
    @content = content
    @hit_count = 0
	end

	def water
    @content = 'water'
	end

  def has_water?
    @content
  end

	def has_ships?
    @ship
  end

  def hit!
    @hit = true
    @content = 'x'
    @hit_count += 1
  end

  def hit?
    @hit
  end

  def content
    @content
  end

  def hit_count
    raise 'Cell is hit more than once' if @hit_count > 1
  end

end
