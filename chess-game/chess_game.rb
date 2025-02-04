module Chess
  RANKS = 1..8; FILES = "A".."H"

  def self.valid_square?(rank, file)
    RANKS.include? rank and FILES.include? file
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[0..1]}#{last_name[-2..-1] || last_name}".upcase
  end

  def self.move_message(first_name, last_name, square)
    "#{nick_name(first_name, last_name)} #{valid_square?(square[1].to_i, square[0]) ? "moved to #{square}" : "attempted to move to #{square}, but that is not a valid square"}"
  end
end
