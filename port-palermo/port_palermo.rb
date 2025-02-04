module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    raise ArgumentError, "Not a string" unless city.is_a? String
    raise ArgumentError, "Empty string" if city.empty?
    return city.upcase[0..3].to_sym
  end

  def self.get_terminal(ship_identifier)
    identifier = ship_identifier[0..2].to_s.upcase
    if identifier == "OIL"
      :A
    elsif identifier == "GAS"
      :A
    else
      :B
    end
  end
end
