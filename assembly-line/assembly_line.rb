class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4
      return @speed * 221
    when 5..8
      return @speed * 221 * 0.9
    when 9
      return @speed * 221 * 0.8
    when 10
      return @speed * 221 * 0.77
    end
  end

  def working_items_per_minute
    return (production_rate_per_hour / 60).floor
  end
end
