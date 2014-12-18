class Cell

	def initialize
    @content = :water
    @hit_count = 0
	end

	def water
    @content = :water
	end

  def has_water?
    @content == :water
  end

	def has_ship?
    @content == :ship
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

  def place!(ship)
    @content = :ship
  end

end
