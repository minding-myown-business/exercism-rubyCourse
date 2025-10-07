class ResistorColorDuo
  def self.value(arr)
    @mappings = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      grey: 8,
      white: 9
    }
    @num = 0
    @num += @mappings[arr[0].to_sym] * 10
    @num += @mappings[arr[1].to_sym]
  end
end